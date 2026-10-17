public with sharing class BenchService105 {
    public static Integer run(String label) {
        Bench105__c rec = new Bench105__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
