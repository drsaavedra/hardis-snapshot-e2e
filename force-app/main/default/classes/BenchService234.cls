public with sharing class BenchService234 {
    public static Integer run(String label) {
        Bench034__c rec = new Bench034__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
