public with sharing class BenchService095 {
    public static Integer run(String label) {
        Bench095__c rec = new Bench095__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
