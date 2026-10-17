public with sharing class BenchService298 {
    public static Integer run(String label) {
        Bench098__c rec = new Bench098__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
