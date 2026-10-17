public with sharing class BenchService174 {
    public static Integer run(String label) {
        Bench174__c rec = new Bench174__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
