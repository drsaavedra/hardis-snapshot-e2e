public with sharing class BenchService252 {
    public static Integer run(String label) {
        Bench052__c rec = new Bench052__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
