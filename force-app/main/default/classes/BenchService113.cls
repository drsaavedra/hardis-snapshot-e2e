public with sharing class BenchService113 {
    public static Integer run(String label) {
        Bench113__c rec = new Bench113__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
