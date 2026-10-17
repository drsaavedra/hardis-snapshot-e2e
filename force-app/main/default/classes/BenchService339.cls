public with sharing class BenchService339 {
    public static Integer run(String label) {
        Bench139__c rec = new Bench139__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
