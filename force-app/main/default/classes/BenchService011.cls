public with sharing class BenchService011 {
    public static Integer run(String label) {
        Bench011__c rec = new Bench011__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
