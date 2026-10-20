public with sharing class BenchService003 {
    public static Integer run(String label) {
        Bench003__c rec = new Bench003__c(Name = label, F00_Text__c = label);
        return rec.Name.trim().length();
    }
}
