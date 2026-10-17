public with sharing class BenchService014 {
    public static Integer run(String label) {
        Bench014__c rec = new Bench014__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
