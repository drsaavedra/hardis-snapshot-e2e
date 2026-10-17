public with sharing class BenchService235 {
    public static Integer run(String label) {
        Bench035__c rec = new Bench035__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
