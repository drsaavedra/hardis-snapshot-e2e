public with sharing class BenchService200 {
    public static Integer run(String label) {
        Bench000__c rec = new Bench000__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
