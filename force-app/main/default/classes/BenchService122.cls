public with sharing class BenchService122 {
    public static Integer run(String label) {
        Bench122__c rec = new Bench122__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
