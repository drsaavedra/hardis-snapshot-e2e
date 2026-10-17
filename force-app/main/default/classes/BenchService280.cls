public with sharing class BenchService280 {
    public static Integer run(String label) {
        Bench080__c rec = new Bench080__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
