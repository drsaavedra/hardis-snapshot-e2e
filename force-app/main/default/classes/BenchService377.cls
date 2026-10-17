public with sharing class BenchService377 {
    public static Integer run(String label) {
        Bench177__c rec = new Bench177__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
