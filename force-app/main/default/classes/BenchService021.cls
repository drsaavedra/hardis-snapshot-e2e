public with sharing class BenchService021 {
    public static Integer run(String label) {
        Bench021__c rec = new Bench021__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
