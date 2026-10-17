public with sharing class BenchService111 {
    public static Integer run(String label) {
        Bench111__c rec = new Bench111__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
