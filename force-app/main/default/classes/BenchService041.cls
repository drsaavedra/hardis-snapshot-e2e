public with sharing class BenchService041 {
    public static Integer run(String label) {
        Bench041__c rec = new Bench041__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
