public with sharing class BenchService194 {
    public static Integer run(String label) {
        Bench194__c rec = new Bench194__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
