public with sharing class BenchService125 {
    public static Integer run(String label) {
        Bench125__c rec = new Bench125__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
