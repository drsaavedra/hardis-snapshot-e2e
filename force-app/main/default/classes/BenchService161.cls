public with sharing class BenchService161 {
    public static Integer run(String label) {
        Bench161__c rec = new Bench161__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
