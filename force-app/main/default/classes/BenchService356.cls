public with sharing class BenchService356 {
    public static Integer run(String label) {
        Bench156__c rec = new Bench156__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
