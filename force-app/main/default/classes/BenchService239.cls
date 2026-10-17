public with sharing class BenchService239 {
    public static Integer run(String label) {
        Bench039__c rec = new Bench039__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
