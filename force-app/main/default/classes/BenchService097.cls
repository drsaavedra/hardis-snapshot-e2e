public with sharing class BenchService097 {
    public static Integer run(String label) {
        Bench097__c rec = new Bench097__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
