public with sharing class BenchService208 {
    public static Integer run(String label) {
        Bench008__c rec = new Bench008__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
