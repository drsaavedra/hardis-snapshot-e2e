public with sharing class BenchService116 {
    public static Integer run(String label) {
        Bench116__c rec = new Bench116__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
