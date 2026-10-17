public with sharing class BenchService162 {
    public static Integer run(String label) {
        Bench162__c rec = new Bench162__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
