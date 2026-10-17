public with sharing class BenchService393 {
    public static Integer run(String label) {
        Bench193__c rec = new Bench193__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
