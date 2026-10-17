public with sharing class BenchService272 {
    public static Integer run(String label) {
        Bench072__c rec = new Bench072__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
