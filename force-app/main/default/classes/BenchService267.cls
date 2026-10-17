public with sharing class BenchService267 {
    public static Integer run(String label) {
        Bench067__c rec = new Bench067__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
