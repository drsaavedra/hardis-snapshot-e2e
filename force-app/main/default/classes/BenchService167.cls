public with sharing class BenchService167 {
    public static Integer run(String label) {
        Bench167__c rec = new Bench167__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
