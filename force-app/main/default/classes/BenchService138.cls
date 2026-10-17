public with sharing class BenchService138 {
    public static Integer run(String label) {
        Bench138__c rec = new Bench138__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
