public with sharing class BenchService379 {
    public static Integer run(String label) {
        Bench179__c rec = new Bench179__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
