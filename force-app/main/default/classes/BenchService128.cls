public with sharing class BenchService128 {
    public static Integer run(String label) {
        Bench128__c rec = new Bench128__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
