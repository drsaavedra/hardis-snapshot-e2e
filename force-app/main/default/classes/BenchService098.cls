public with sharing class BenchService098 {
    public static Integer run(String label) {
        Bench098__c rec = new Bench098__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
