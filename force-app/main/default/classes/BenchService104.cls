public with sharing class BenchService104 {
    public static Integer run(String label) {
        Bench104__c rec = new Bench104__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
