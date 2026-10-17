public with sharing class BenchService351 {
    public static Integer run(String label) {
        Bench151__c rec = new Bench151__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
