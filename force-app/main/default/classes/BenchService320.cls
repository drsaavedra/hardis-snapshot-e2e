public with sharing class BenchService320 {
    public static Integer run(String label) {
        Bench120__c rec = new Bench120__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
