public with sharing class BenchService100 {
    public static Integer run(String label) {
        Bench100__c rec = new Bench100__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
