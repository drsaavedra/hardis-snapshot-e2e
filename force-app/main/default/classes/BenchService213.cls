public with sharing class BenchService213 {
    public static Integer run(String label) {
        Bench013__c rec = new Bench013__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
