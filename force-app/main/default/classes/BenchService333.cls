public with sharing class BenchService333 {
    public static Integer run(String label) {
        Bench133__c rec = new Bench133__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
