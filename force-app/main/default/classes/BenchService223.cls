public with sharing class BenchService223 {
    public static Integer run(String label) {
        Bench023__c rec = new Bench023__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
