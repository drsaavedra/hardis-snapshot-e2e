public with sharing class BenchService396 {
    public static Integer run(String label) {
        Bench196__c rec = new Bench196__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
