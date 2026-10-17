public with sharing class BenchService268 {
    public static Integer run(String label) {
        Bench068__c rec = new Bench068__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
