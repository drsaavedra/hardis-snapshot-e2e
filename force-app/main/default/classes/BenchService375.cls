public with sharing class BenchService375 {
    public static Integer run(String label) {
        Bench175__c rec = new Bench175__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
