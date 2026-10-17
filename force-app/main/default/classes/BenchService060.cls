public with sharing class BenchService060 {
    public static Integer run(String label) {
        Bench060__c rec = new Bench060__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
