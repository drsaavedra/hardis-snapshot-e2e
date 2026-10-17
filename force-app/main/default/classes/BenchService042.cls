public with sharing class BenchService042 {
    public static Integer run(String label) {
        Bench042__c rec = new Bench042__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
