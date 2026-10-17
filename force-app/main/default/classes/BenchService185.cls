public with sharing class BenchService185 {
    public static Integer run(String label) {
        Bench185__c rec = new Bench185__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
