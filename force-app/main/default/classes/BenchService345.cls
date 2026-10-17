public with sharing class BenchService345 {
    public static Integer run(String label) {
        Bench145__c rec = new Bench145__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
