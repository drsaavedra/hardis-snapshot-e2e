public with sharing class BenchService093 {
    public static Integer run(String label) {
        Bench093__c rec = new Bench093__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
