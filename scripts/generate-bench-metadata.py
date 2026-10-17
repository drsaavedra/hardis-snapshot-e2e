#!/usr/bin/env python3
"""Generates a large SFDX project under force-app/main/default/bench* to time scratch org deploys.

Usage: python3 scripts/generate-bench-metadata.py [objects] [fields] [classes] [lwc] [permsets]
Prints the component count per type. Rerunning replaces the generated files.
"""
import shutil
import sys
from pathlib import Path

API = "66.0"
OBJECTS, FIELDS, CLASSES, LWCS, PERMSETS = (int(a) for a in (sys.argv[1:] + ["200", "15", "400", "40", "10"][len(sys.argv) - 1:]))
ROOT = Path("force-app/main/default")
HDR = '<?xml version="1.0" encoding="UTF-8"?>\n'
NS = 'xmlns="http://soap.sforce.com/2006/04/metadata"'
FIELD_KINDS = ["Text", "Number", "Checkbox", "Date", "Picklist", "LongTextArea", "Currency", "Lookup"]


def write(path: Path, text: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text)


def field_xml(i: int, name: str, kind: str) -> str:
    # fullName first, then the other elements in alphabetical order, as a retrieve writes them
    tags = {"label": name[:-3], "type": kind}
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
        # A child relationship name must be unique on the parent, so it carries the object index
        "Lookup": {"deleteConstraint": "SetNull", "referenceTo": "Account", "relationshipLabel": f"Bench {i:03d}",
                   "relationshipName": f"Bench{i:03d}"},
    }[kind])
    body = "".join(f"<{t}>{tags[t]}</{t}>" for t in sorted(tags))
    return f"{HDR}<CustomField {NS}><fullName>{name}</fullName>{body}</CustomField>\n"


def obj(i: int) -> str:
    return f"Bench{i:03d}__c"


def fld(j: int) -> str:
    return f"F{j:02d}_{FIELD_KINDS[j % len(FIELD_KINDS)]}__c"


for d in [ROOT / "objects", ROOT / "classes", ROOT / "lwc", ROOT / "permissionsets"]:
    for p in d.glob("[Bb]ench*"):
        shutil.rmtree(p) if p.is_dir() else p.unlink()

for i in range(OBJECTS):
    o = obj(i)
    write(ROOT / "objects" / o / f"{o}.object-meta.xml",
          f"{HDR}<CustomObject {NS}><deploymentStatus>Deployed</deploymentStatus><label>Bench {i:03d}</label>"
          f"<nameField><label>Name</label><type>Text</type></nameField><pluralLabel>Bench {i:03d}s</pluralLabel>"
          f"<sharingModel>ReadWrite</sharingModel></CustomObject>\n")
    for j in range(FIELDS):
        write(ROOT / "objects" / o / "fields" / f"{fld(j)}.field-meta.xml", field_xml(i, fld(j), FIELD_KINDS[j % len(FIELD_KINDS)]))

cls_meta = f"{HDR}<ApexClass {NS}><apiVersion>{API}</apiVersion><status>Active</status></ApexClass>\n"
for k in range(CLASSES):
    o, f = obj(k % OBJECTS), fld(0)
    write(ROOT / "classes" / f"BenchService{k:03d}.cls",
          f"public with sharing class BenchService{k:03d} {{\n"
          f"    public static Integer run(String label) {{\n"
          f"        {o} rec = new {o}(Name = label, {f} = label);\n"
          f"        return rec.Name.length();\n"
          f"    }}\n}}\n")
    write(ROOT / "classes" / f"BenchService{k:03d}.cls-meta.xml", cls_meta)
write(ROOT / "classes" / "BenchServiceTest.cls",
      "@IsTest\nprivate class BenchServiceTest {\n    @IsTest\n    static void runsEveryService() {\n"
      + "".join(f"        Assert.areEqual(4, BenchService{k:03d}.run('t{k:03d}'));\n" for k in range(CLASSES))
      + "    }\n}\n")
write(ROOT / "classes" / "BenchServiceTest.cls-meta.xml", cls_meta)

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
    # Required fields (none here) and Name cannot take field permissions, every generated field can
    fps = "".join(f"<fieldPermissions><editable>true</editable><field>{o}.{fld(j)}</field><readable>true</readable></fieldPermissions>"
                  for o in objs for j in range(FIELDS))
    ops = "".join(f"<objectPermissions><allowCreate>true</allowCreate><allowDelete>true</allowDelete><allowEdit>true</allowEdit>"
                  f"<allowRead>true</allowRead><modifyAllRecords>false</modifyAllRecords><object>{o}</object>"
                  f"<viewAllRecords>false</viewAllRecords></objectPermissions>" for o in objs)
    write(ROOT / "permissionsets" / f"Bench{p:02d}.permissionset-meta.xml",
          f"{HDR}<PermissionSet {NS}>{fps}<hasActivationRequired>false</hasActivationRequired><label>Bench {p:02d}</label>{ops}</PermissionSet>\n")

counts = {"CustomObject": OBJECTS, "CustomField": OBJECTS * FIELDS, "ApexClass": CLASSES + 1, "LightningComponentBundle": LWCS,
          "PermissionSet": PERMSETS}
for t, c in counts.items():
    print(f"{t}\t{c}")
print(f"Total\t{sum(counts.values())}")
