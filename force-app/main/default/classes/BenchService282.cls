public with sharing class BenchService282 {
    public static Integer run(String label) {
        Bench082__c rec = new Bench082__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
