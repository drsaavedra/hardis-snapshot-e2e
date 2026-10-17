public with sharing class BenchService236 {
    public static Integer run(String label) {
        Bench036__c rec = new Bench036__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
