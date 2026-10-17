public with sharing class BenchService350 {
    public static Integer run(String label) {
        Bench150__c rec = new Bench150__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
