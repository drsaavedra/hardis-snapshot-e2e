public with sharing class BenchService047 {
    public static Integer run(String label) {
        Bench047__c rec = new Bench047__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
