public with sharing class BenchService270 {
    public static Integer run(String label) {
        Bench070__c rec = new Bench070__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
