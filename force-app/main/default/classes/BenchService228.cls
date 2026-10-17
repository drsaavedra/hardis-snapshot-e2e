public with sharing class BenchService228 {
    public static Integer run(String label) {
        Bench028__c rec = new Bench028__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
