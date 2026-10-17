public with sharing class BenchService024 {
    public static Integer run(String label) {
        Bench024__c rec = new Bench024__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
