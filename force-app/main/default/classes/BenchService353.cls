public with sharing class BenchService353 {
    public static Integer run(String label) {
        Bench153__c rec = new Bench153__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
