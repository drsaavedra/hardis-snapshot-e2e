public with sharing class BenchService016 {
    public static Integer run(String label) {
        Bench016__c rec = new Bench016__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
