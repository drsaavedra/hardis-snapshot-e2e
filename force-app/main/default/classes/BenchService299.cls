public with sharing class BenchService299 {
    public static Integer run(String label) {
        Bench099__c rec = new Bench099__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
