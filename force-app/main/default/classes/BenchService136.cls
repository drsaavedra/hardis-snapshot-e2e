public with sharing class BenchService136 {
    public static Integer run(String label) {
        Bench136__c rec = new Bench136__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
