public with sharing class BenchService349 {
    public static Integer run(String label) {
        Bench149__c rec = new Bench149__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
