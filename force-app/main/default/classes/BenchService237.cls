public with sharing class BenchService237 {
    public static Integer run(String label) {
        Bench037__c rec = new Bench037__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
