public with sharing class BenchService363 {
    public static Integer run(String label) {
        Bench163__c rec = new Bench163__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
