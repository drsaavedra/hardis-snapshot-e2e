public with sharing class BenchService119 {
    public static Integer run(String label) {
        Bench119__c rec = new Bench119__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
