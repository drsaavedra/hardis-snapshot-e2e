public with sharing class BenchService195 {
    public static Integer run(String label) {
        Bench195__c rec = new Bench195__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
