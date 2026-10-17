public with sharing class BenchService285 {
    public static Integer run(String label) {
        Bench085__c rec = new Bench085__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
