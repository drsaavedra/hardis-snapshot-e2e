public with sharing class BenchService064 {
    public static Integer run(String label) {
        Bench064__c rec = new Bench064__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
