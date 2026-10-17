public with sharing class BenchService160 {
    public static Integer run(String label) {
        Bench160__c rec = new Bench160__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
