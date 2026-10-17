public with sharing class BenchService256 {
    public static Integer run(String label) {
        Bench056__c rec = new Bench056__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
