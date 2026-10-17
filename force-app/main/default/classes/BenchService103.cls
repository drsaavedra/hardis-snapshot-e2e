public with sharing class BenchService103 {
    public static Integer run(String label) {
        Bench103__c rec = new Bench103__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
