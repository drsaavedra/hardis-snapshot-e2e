public with sharing class BenchService132 {
    public static Integer run(String label) {
        Bench132__c rec = new Bench132__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
