public with sharing class BenchService271 {
    public static Integer run(String label) {
        Bench071__c rec = new Bench071__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
