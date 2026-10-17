#!/usr/bin/env python3
"""Generates a large SFDX project under force-app/main/default/bench* to time scratch org deploys.

Usage: python3 scripts/generate-bench-metadata.py [objects] [fields] [classes] [lwc] [permsets]
Prints the component count per type. Rerunning replaces the generated files.
The first benchmark size was `200 15 400 40 10` with an earlier version of this script (no triggers, layouts,
validation rules or Apex dependency chain): 3,651 components.
"""
import shutil
import sys
from pathlib import Path

API = "66.0"
OBJECTS, FIELDS, CLASSES, LWCS, PERMSETS = (int(a) for a in (sys.argv[1:] + ["300", "30", "1200", "40", "20"][len(sys.argv) - 1:]))
ROOT = Path("force-app/main/default")
HDR = '<?xml version="1.0" encoding="UTF-8"?>\n'
NS = 'xmlns="http://soap.sforce.com/2006/04/metadata"'
FIELD_KINDS = ["Text", "Number", "Checkbox", "Date", "Picklist", "LongTextArea", "Currency"]
TESTED_PER_CLASS = 100  # Services per test class: one insert per object stays under the 150 DML limit


def write(path: Path, text: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text)


def kind(j: int) -> str:
    # One lookup per object: Account allows many child relationships, each needs a unique name
    return "Lookup" if j == 7 else FIELD_KINDS[j % len(FIELD_KINDS)]


def field_xml(i: int, name: str, k: str) -> str:
    # fullName first, then the other elements in alphabetical order, as a retrieve writes them
    tags = {"label": name[:-3], "type": k}
    tags.update({
        "Text": {"length": "80"},
        "Number": {"precision": "18", "scale": "2"},
        "Checkbox": {"defaultValue": "false"},
        "Date": {},
        "Picklist": {"valueSet": "<valueSetDefinition>"
                     + "".join(f"<value><fullName>V{v}</fullName><default>false</default><label>V{v}</label></value>" for v in range(5))
                     + "</valueSetDefinition>"},
        "LongTextArea": {"length": "32768", "visibleLines": "3"},
        "Currency": {"precision": "18", "scale": "2"},
        "Lookup": {"deleteConstraint": "SetNull", "referenceTo": "Account", "relationshipLabel": f"Bench {i:03d}",
                   "relationshipName": f"Bench{i:03d}"},
    }[k])
    body = "".join(f"<{t}>{tags[t]}</{t}>" for t in sorted(tags))
    return f"{HDR}<CustomField {NS}><fullName>{name}</fullName>{body}</CustomField>\n"


def obj(i: int) -> str:
    return f"Bench{i:03d}__c"


def fld(j: int) -> str:
    return f"F{j:02d}_{kind(j)}__c"


def svc(k: int) -> str:
    return f"BenchService{k:04d}"


for d in ["objects", "classes", "triggers", "layouts", "lwc", "permissionsets"]:
    for p in (ROOT / d).glob("[Bb]ench*"):
        shutil.rmtree(p) if p.is_dir() else p.unlink()

for i in range(OBJECTS):
    o = obj(i)
    write(ROOT / "objects" / o / f"{o}.object-meta.xml",
          f"{HDR}<CustomObject {NS}><deploymentStatus>Deployed</deploymentStatus><label>Bench {i:03d}</label>"
          f"<nameField><label>Name</label><type>Text</type></nameField><pluralLabel>Bench {i:03d}s</pluralLabel>"
          f"<sharingModel>ReadWrite</sharingModel></CustomObject>\n")
    for j in range(FIELDS):
        write(ROOT / "objects" / o / "fields" / f"{fld(j)}.field-meta.xml", field_xml(i, fld(j), kind(j)))
    for name, formula in [("NoNegativeNumber", f"{fld(1)} &lt; 0"), ("TextNotFull", f"LEN({fld(0)}) &gt; 79")]:
        write(ROOT / "objects" / o / "validationRules" / f"{name}.validationRule-meta.xml",
              f"{HDR}<ValidationRule {NS}><fullName>{name}</fullName><active>true</active>"
              f"<errorConditionFormula>{formula}</errorConditionFormula><errorMessage>{name} on {o}</errorMessage></ValidationRule>\n")
    items = '<layoutItems><behavior>Required</behavior><field>Name</field></layoutItems>' + "".join(
        f"<layoutItems><behavior>Edit</behavior><field>{fld(j)}</field></layoutItems>" for j in range(min(FIELDS, 10)))
    write(ROOT / "layouts" / f"{o}-Bench {i:03d} Layout.layout-meta.xml",
          f"{HDR}<Layout {NS}><layoutSections><customLabel>false</customLabel><detailHeading>false</detailHeading>"
          f"<editHeading>true</editHeading><label>Information</label><layoutColumns>{items}</layoutColumns>"
          f"<style>OneColumn</style></layoutSections><showEmailCheckbox>false</showEmailCheckbox>"
          f"<showHighlightsPanel>false</showHighlightsPanel><showInteractionLogPanel>false</showInteractionLogPanel>"
          f"<showRunAssignmentRulesCheckbox>false</showRunAssignmentRulesCheckbox>"
          f"<showSubmitAndAttachButton>false</showSubmitAndAttachButton></Layout>\n")
    write(ROOT / "triggers" / f"Bench{i:03d}Trigger.trigger",
          f"trigger Bench{i:03d}Trigger on {o} (before insert, before update) {{\n    {svc(i)}.handle(Trigger.new);\n}}\n")
    write(ROOT / "triggers" / f"Bench{i:03d}Trigger.trigger-meta.xml",
          f"{HDR}<ApexTrigger {NS}><apiVersion>{API}</apiVersion><status>Active</status></ApexTrigger>\n")

cls_meta = f"{HDR}<ApexClass {NS}><apiVersion>{API}</apiVersion><status>Active</status></ApexClass>\n"
for k in range(CLASSES):
    o, f = obj(k % OBJECTS), fld(0)
    # Each service takes the previous one as a parameter type: a compile-time chain with no runtime recursion
    chain = f"    public static Boolean chain({svc(k - 1)} previous) {{\n        return previous == null;\n    }}\n" if k else ""
    write(ROOT / "classes" / f"{svc(k)}.cls",
          f"public with sharing class {svc(k)} {{\n"
          f"    public static Integer run(String label) {{\n"
          f"        {o} rec = new {o}(Name = label, {f} = label);\n"
          f"        return rec.Name.length();\n"
          f"    }}\n"
          f"    public static void handle(List<SObject> records) {{\n"
          f"        for (SObject record : records) {{\n"
          f"            record.put('{f}', String.valueOf(record.get('Name')));\n"
          f"        }}\n"
          f"    }}\n{chain}}}\n")
    write(ROOT / "classes" / f"{svc(k)}.cls-meta.xml", cls_meta)

tests = 0
for start in range(0, CLASSES, TESTED_PER_CLASS):
    ks = range(start, min(CLASSES, start + TESTED_PER_CLASS))
    body = "".join(f"        Assert.areEqual(5, {svc(k)}.run('t{k:04d}'));\n" for k in ks)
    body += "".join(f"        Assert.isTrue({svc(k)}.chain(null));\n" for k in ks if k)
    # Only 300 services have a trigger: call handle() directly on an unsaved record so every service is covered
    body += "".join(f"        {obj(k % OBJECTS)} h{k:04d} = new {obj(k % OBJECTS)}(Name = 'h{k:04d}');\n"
                    f"        {svc(k)}.handle(new List<SObject>{{ h{k:04d} }});\n"
                    f"        Assert.areEqual('h{k:04d}', h{k:04d}.{fld(0)});\n" for k in ks)
    # Inserting one record per object fires its trigger, which calls the service's handle()
    body += "".join(f"        insert new {obj(k)}(Name = 'r{k:04d}');\n" for k in ks if k < OBJECTS)
    write(ROOT / "classes" / f"BenchServiceTest{tests:02d}.cls",
          f"@IsTest\nprivate class BenchServiceTest{tests:02d} {{\n    @IsTest\n    static void runsServices() {{\n{body}    }}\n}}\n")
    write(ROOT / "classes" / f"BenchServiceTest{tests:02d}.cls-meta.xml", cls_meta)
    tests += 1

for n in range(LWCS):
    name = f"bench{n:02d}"
    write(ROOT / "lwc" / name / f"{name}.html", f"<template><p>{{label}} {n}</p></template>\n")
    write(ROOT / "lwc" / name / f"{name}.js",
          f"import {{ LightningElement, api }} from 'lwc';\nexport default class Bench{n:02d} extends LightningElement {{\n"
          f"    @api label = 'Bench';\n}}\n")
    write(ROOT / "lwc" / name / f"{name}.js-meta.xml",
          f"{HDR}<LightningComponentBundle {NS}><apiVersion>{API}</apiVersion><isExposed>false</isExposed></LightningComponentBundle>\n")

per = max(1, OBJECTS // PERMSETS)
for p in range(PERMSETS):
    objs = [obj(i) for i in range(p * per, min(OBJECTS, (p + 1) * per))]
    fps = "".join(f"<fieldPermissions><editable>true</editable><field>{o}.{fld(j)}</field><readable>true</readable></fieldPermissions>"
                  for o in objs for j in range(FIELDS))
    ops = "".join(f"<objectPermissions><allowCreate>true</allowCreate><allowDelete>true</allowDelete><allowEdit>true</allowEdit>"
                  f"<allowRead>true</allowRead><modifyAllRecords>false</modifyAllRecords><object>{o}</object>"
                  f"<viewAllRecords>false</viewAllRecords></objectPermissions>" for o in objs)
    write(ROOT / "permissionsets" / f"Bench{p:02d}.permissionset-meta.xml",
          f"{HDR}<PermissionSet {NS}>{fps}<hasActivationRequired>false</hasActivationRequired><label>Bench {p:02d}</label>{ops}</PermissionSet>\n")

counts = {"CustomObject": OBJECTS, "CustomField": OBJECTS * FIELDS, "ValidationRule": OBJECTS * 2, "Layout": OBJECTS,
          "ApexTrigger": OBJECTS, "ApexClass": CLASSES + tests, "LightningComponentBundle": LWCS, "PermissionSet": PERMSETS}
for t, c in counts.items():
    print(f"{t}\t{c}")
print(f"Total\t{sum(counts.values())}")
