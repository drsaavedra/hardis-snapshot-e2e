public with sharing class BenchService166 {
    public static Integer run(String label) {
        Bench166__c rec = new Bench166__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
