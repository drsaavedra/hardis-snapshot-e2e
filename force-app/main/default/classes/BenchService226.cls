public with sharing class BenchService226 {
    public static Integer run(String label) {
        Bench026__c rec = new Bench026__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
