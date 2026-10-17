public with sharing class BenchService043 {
    public static Integer run(String label) {
        Bench043__c rec = new Bench043__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
