public with sharing class BenchService342 {
    public static Integer run(String label) {
        Bench142__c rec = new Bench142__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
