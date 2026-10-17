public with sharing class BenchService389 {
    public static Integer run(String label) {
        Bench189__c rec = new Bench189__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
