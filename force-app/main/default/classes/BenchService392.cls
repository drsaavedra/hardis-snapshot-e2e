public with sharing class BenchService392 {
    public static Integer run(String label) {
        Bench192__c rec = new Bench192__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
