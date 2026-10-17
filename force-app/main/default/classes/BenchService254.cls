public with sharing class BenchService254 {
    public static Integer run(String label) {
        Bench054__c rec = new Bench054__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
