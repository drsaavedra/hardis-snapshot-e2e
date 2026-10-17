public with sharing class BenchService233 {
    public static Integer run(String label) {
        Bench033__c rec = new Bench033__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
