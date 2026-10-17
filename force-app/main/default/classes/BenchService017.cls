public with sharing class BenchService017 {
    public static Integer run(String label) {
        Bench017__c rec = new Bench017__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
