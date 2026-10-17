public with sharing class BenchService286 {
    public static Integer run(String label) {
        Bench086__c rec = new Bench086__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
