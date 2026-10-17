public with sharing class BenchService324 {
    public static Integer run(String label) {
        Bench124__c rec = new Bench124__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
