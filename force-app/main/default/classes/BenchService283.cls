public with sharing class BenchService283 {
    public static Integer run(String label) {
        Bench083__c rec = new Bench083__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
