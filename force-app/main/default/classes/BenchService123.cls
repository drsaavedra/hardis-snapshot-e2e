public with sharing class BenchService123 {
    public static Integer run(String label) {
        Bench123__c rec = new Bench123__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
