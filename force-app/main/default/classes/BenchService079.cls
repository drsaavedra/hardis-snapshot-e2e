public with sharing class BenchService079 {
    public static Integer run(String label) {
        Bench079__c rec = new Bench079__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
