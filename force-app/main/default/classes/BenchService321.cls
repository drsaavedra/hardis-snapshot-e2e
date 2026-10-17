public with sharing class BenchService321 {
    public static Integer run(String label) {
        Bench121__c rec = new Bench121__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
