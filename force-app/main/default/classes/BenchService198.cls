public with sharing class BenchService198 {
    public static Integer run(String label) {
        Bench198__c rec = new Bench198__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
