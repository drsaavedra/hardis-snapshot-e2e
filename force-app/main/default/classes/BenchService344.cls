public with sharing class BenchService344 {
    public static Integer run(String label) {
        Bench144__c rec = new Bench144__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
