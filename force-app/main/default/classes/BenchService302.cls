public with sharing class BenchService302 {
    public static Integer run(String label) {
        Bench102__c rec = new Bench102__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
