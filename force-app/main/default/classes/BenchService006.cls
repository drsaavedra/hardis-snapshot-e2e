public with sharing class BenchService006 {
    public static Integer run(String label) {
        Bench006__c rec = new Bench006__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
