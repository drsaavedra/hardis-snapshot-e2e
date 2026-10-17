public with sharing class BenchService155 {
    public static Integer run(String label) {
        Bench155__c rec = new Bench155__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
