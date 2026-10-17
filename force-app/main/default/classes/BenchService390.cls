public with sharing class BenchService390 {
    public static Integer run(String label) {
        Bench190__c rec = new Bench190__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
