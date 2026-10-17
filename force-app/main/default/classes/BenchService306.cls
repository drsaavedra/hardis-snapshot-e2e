public with sharing class BenchService306 {
    public static Integer run(String label) {
        Bench106__c rec = new Bench106__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
