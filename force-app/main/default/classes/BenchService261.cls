public with sharing class BenchService261 {
    public static Integer run(String label) {
        Bench061__c rec = new Bench061__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
