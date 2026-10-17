public with sharing class BenchService245 {
    public static Integer run(String label) {
        Bench045__c rec = new Bench045__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
