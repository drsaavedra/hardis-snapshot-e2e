public with sharing class BenchService081 {
    public static Integer run(String label) {
        Bench081__c rec = new Bench081__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
