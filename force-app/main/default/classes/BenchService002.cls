public with sharing class BenchService002 {
    public static Integer run(String label) {
        Bench002__c rec = new Bench002__c(Name = label, F00_Text__c = label);
        return rec.Name.trim().length();
    }
}
