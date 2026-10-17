public with sharing class BenchService173 {
    public static Integer run(String label) {
        Bench173__c rec = new Bench173__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
