public with sharing class BenchService199 {
    public static Integer run(String label) {
        Bench199__c rec = new Bench199__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
