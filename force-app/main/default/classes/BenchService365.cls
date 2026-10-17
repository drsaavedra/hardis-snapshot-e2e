public with sharing class BenchService365 {
    public static Integer run(String label) {
        Bench165__c rec = new Bench165__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
