public with sharing class BenchService010 {
    public static Integer run(String label) {
        Bench010__c rec = new Bench010__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
