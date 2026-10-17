public with sharing class BenchService331 {
    public static Integer run(String label) {
        Bench131__c rec = new Bench131__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
