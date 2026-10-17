public with sharing class BenchService307 {
    public static Integer run(String label) {
        Bench107__c rec = new Bench107__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
