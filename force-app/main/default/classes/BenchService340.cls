public with sharing class BenchService340 {
    public static Integer run(String label) {
        Bench140__c rec = new Bench140__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
