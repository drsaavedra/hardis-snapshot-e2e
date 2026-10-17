public with sharing class BenchService007 {
    public static Integer run(String label) {
        Bench007__c rec = new Bench007__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
