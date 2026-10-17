public with sharing class BenchService068 {
    public static Integer run(String label) {
        Bench068__c rec = new Bench068__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
