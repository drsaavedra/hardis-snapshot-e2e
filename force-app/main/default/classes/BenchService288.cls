public with sharing class BenchService288 {
    public static Integer run(String label) {
        Bench088__c rec = new Bench088__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
