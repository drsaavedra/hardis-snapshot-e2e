public with sharing class BenchService074 {
    public static Integer run(String label) {
        Bench074__c rec = new Bench074__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
