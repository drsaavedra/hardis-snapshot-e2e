public with sharing class BenchService314 {
    public static Integer run(String label) {
        Bench114__c rec = new Bench114__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
