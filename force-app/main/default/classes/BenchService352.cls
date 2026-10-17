public with sharing class BenchService352 {
    public static Integer run(String label) {
        Bench152__c rec = new Bench152__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
