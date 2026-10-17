public with sharing class BenchService205 {
    public static Integer run(String label) {
        Bench005__c rec = new Bench005__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
