public with sharing class BenchService096 {
    public static Integer run(String label) {
        Bench096__c rec = new Bench096__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
