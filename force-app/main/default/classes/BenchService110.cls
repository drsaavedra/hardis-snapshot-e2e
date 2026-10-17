public with sharing class BenchService110 {
    public static Integer run(String label) {
        Bench110__c rec = new Bench110__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
