public with sharing class BenchService292 {
    public static Integer run(String label) {
        Bench092__c rec = new Bench092__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
