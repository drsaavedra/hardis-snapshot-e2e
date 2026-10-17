public with sharing class BenchService334 {
    public static Integer run(String label) {
        Bench134__c rec = new Bench134__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
