public with sharing class BenchService078 {
    public static Integer run(String label) {
        Bench078__c rec = new Bench078__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
