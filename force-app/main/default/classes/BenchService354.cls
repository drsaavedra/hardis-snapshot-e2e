public with sharing class BenchService354 {
    public static Integer run(String label) {
        Bench154__c rec = new Bench154__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
