public with sharing class BenchService269 {
    public static Integer run(String label) {
        Bench069__c rec = new Bench069__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
