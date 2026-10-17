public with sharing class BenchService371 {
    public static Integer run(String label) {
        Bench171__c rec = new Bench171__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
