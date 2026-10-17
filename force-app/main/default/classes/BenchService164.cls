public with sharing class BenchService164 {
    public static Integer run(String label) {
        Bench164__c rec = new Bench164__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
