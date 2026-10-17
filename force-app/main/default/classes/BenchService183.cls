public with sharing class BenchService183 {
    public static Integer run(String label) {
        Bench183__c rec = new Bench183__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
