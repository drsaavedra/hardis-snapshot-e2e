public with sharing class BenchService301 {
    public static Integer run(String label) {
        Bench101__c rec = new Bench101__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
