public with sharing class BenchService262 {
    public static Integer run(String label) {
        Bench062__c rec = new Bench062__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
