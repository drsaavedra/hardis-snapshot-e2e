public with sharing class BenchService384 {
    public static Integer run(String label) {
        Bench184__c rec = new Bench184__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
