public with sharing class BenchService172 {
    public static Integer run(String label) {
        Bench172__c rec = new Bench172__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
