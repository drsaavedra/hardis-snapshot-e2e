public with sharing class BenchService143 {
    public static Integer run(String label) {
        Bench143__c rec = new Bench143__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
