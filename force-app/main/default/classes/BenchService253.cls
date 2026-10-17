public with sharing class BenchService253 {
    public static Integer run(String label) {
        Bench053__c rec = new Bench053__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
