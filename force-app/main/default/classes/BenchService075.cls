public with sharing class BenchService075 {
    public static Integer run(String label) {
        Bench075__c rec = new Bench075__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
