public with sharing class BenchService141 {
    public static Integer run(String label) {
        Bench141__c rec = new Bench141__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
