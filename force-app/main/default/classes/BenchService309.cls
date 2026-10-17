public with sharing class BenchService309 {
    public static Integer run(String label) {
        Bench109__c rec = new Bench109__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
