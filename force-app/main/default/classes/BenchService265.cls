public with sharing class BenchService265 {
    public static Integer run(String label) {
        Bench065__c rec = new Bench065__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
