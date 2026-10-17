public with sharing class BenchService089 {
    public static Integer run(String label) {
        Bench089__c rec = new Bench089__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
