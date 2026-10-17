public with sharing class BenchService358 {
    public static Integer run(String label) {
        Bench158__c rec = new Bench158__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
