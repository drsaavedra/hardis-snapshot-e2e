public with sharing class BenchService227 {
    public static Integer run(String label) {
        Bench027__c rec = new Bench027__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
