public with sharing class BenchService187 {
    public static Integer run(String label) {
        Bench187__c rec = new Bench187__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
