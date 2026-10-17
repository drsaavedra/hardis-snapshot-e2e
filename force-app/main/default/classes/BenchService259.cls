public with sharing class BenchService259 {
    public static Integer run(String label) {
        Bench059__c rec = new Bench059__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
