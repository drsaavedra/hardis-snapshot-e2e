public with sharing class BenchService330 {
    public static Integer run(String label) {
        Bench130__c rec = new Bench130__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
