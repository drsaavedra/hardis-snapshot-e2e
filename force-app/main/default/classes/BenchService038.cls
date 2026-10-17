public with sharing class BenchService038 {
    public static Integer run(String label) {
        Bench038__c rec = new Bench038__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
