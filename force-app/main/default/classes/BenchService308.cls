public with sharing class BenchService308 {
    public static Integer run(String label) {
        Bench108__c rec = new Bench108__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
