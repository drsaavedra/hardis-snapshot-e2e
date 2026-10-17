public with sharing class BenchService276 {
    public static Integer run(String label) {
        Bench076__c rec = new Bench076__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
