public with sharing class BenchService287 {
    public static Integer run(String label) {
        Bench087__c rec = new Bench087__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
