public with sharing class BenchService063 {
    public static Integer run(String label) {
        Bench063__c rec = new Bench063__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
