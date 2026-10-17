public with sharing class BenchService073 {
    public static Integer run(String label) {
        Bench073__c rec = new Bench073__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
