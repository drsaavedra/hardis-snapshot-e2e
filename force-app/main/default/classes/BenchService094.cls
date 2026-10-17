public with sharing class BenchService094 {
    public static Integer run(String label) {
        Bench094__c rec = new Bench094__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
