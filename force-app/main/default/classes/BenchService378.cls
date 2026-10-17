public with sharing class BenchService378 {
    public static Integer run(String label) {
        Bench178__c rec = new Bench178__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
