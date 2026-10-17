public with sharing class BenchService022 {
    public static Integer run(String label) {
        Bench022__c rec = new Bench022__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
