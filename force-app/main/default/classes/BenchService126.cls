public with sharing class BenchService126 {
    public static Integer run(String label) {
        Bench126__c rec = new Bench126__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
