public with sharing class BenchService032 {
    public static Integer run(String label) {
        Bench032__c rec = new Bench032__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
