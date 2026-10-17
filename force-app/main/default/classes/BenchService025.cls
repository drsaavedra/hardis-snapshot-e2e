public with sharing class BenchService025 {
    public static Integer run(String label) {
        Bench025__c rec = new Bench025__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
