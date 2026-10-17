public with sharing class BenchService335 {
    public static Integer run(String label) {
        Bench135__c rec = new Bench135__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
