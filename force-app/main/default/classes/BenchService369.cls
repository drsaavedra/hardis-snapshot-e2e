public with sharing class BenchService369 {
    public static Integer run(String label) {
        Bench169__c rec = new Bench169__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
