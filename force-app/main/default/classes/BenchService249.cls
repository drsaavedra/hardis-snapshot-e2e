public with sharing class BenchService249 {
    public static Integer run(String label) {
        Bench049__c rec = new Bench049__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
