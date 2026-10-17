public with sharing class BenchService020 {
    public static Integer run(String label) {
        Bench020__c rec = new Bench020__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
