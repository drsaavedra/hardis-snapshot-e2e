public with sharing class BenchService012 {
    public static Integer run(String label) {
        Bench012__c rec = new Bench012__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
