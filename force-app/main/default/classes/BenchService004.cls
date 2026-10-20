public with sharing class BenchService004 {
    public static Integer run(String label) {
        Bench004__c rec = new Bench004__c(Name = label, F00_Text__c = label);
        return rec.Name.trim().length();
    }
}
