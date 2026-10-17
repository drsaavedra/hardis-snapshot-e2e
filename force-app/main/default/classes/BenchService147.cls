public with sharing class BenchService147 {
    public static Integer run(String label) {
        Bench147__c rec = new Bench147__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
