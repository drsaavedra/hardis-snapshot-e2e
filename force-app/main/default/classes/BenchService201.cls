public with sharing class BenchService201 {
    public static Integer run(String label) {
        Bench001__c rec = new Bench001__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
