public with sharing class BenchService381 {
    public static Integer run(String label) {
        Bench181__c rec = new Bench181__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
