public with sharing class BenchService251 {
    public static Integer run(String label) {
        Bench051__c rec = new Bench051__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
