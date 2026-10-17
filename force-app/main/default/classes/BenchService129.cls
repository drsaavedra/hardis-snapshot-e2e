public with sharing class BenchService129 {
    public static Integer run(String label) {
        Bench129__c rec = new Bench129__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
