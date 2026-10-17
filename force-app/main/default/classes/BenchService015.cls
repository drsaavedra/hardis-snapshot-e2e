public with sharing class BenchService015 {
    public static Integer run(String label) {
        Bench015__c rec = new Bench015__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
