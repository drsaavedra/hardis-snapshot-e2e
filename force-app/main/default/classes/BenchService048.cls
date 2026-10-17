public with sharing class BenchService048 {
    public static Integer run(String label) {
        Bench048__c rec = new Bench048__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
