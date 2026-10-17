public with sharing class BenchService115 {
    public static Integer run(String label) {
        Bench115__c rec = new Bench115__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
