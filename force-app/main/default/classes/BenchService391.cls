public with sharing class BenchService391 {
    public static Integer run(String label) {
        Bench191__c rec = new Bench191__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
