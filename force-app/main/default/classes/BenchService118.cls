public with sharing class BenchService118 {
    public static Integer run(String label) {
        Bench118__c rec = new Bench118__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
