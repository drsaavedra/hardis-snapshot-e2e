public with sharing class BenchService346 {
    public static Integer run(String label) {
        Bench146__c rec = new Bench146__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
