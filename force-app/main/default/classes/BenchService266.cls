public with sharing class BenchService266 {
    public static Integer run(String label) {
        Bench066__c rec = new Bench066__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
