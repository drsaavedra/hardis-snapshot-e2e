public with sharing class BenchService058 {
    public static Integer run(String label) {
        Bench058__c rec = new Bench058__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
