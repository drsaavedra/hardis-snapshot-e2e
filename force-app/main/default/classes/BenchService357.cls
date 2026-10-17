public with sharing class BenchService357 {
    public static Integer run(String label) {
        Bench157__c rec = new Bench157__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
