public with sharing class BenchService040 {
    public static Integer run(String label) {
        Bench040__c rec = new Bench040__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
