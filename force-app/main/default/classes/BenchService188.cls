public with sharing class BenchService188 {
    public static Integer run(String label) {
        Bench188__c rec = new Bench188__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
