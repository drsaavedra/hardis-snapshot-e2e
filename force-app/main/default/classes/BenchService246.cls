public with sharing class BenchService246 {
    public static Integer run(String label) {
        Bench046__c rec = new Bench046__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
