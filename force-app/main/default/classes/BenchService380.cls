public with sharing class BenchService380 {
    public static Integer run(String label) {
        Bench180__c rec = new Bench180__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
