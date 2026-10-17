public with sharing class BenchService277 {
    public static Integer run(String label) {
        Bench077__c rec = new Bench077__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
