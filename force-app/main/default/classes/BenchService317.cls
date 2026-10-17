public with sharing class BenchService317 {
    public static Integer run(String label) {
        Bench117__c rec = new Bench117__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
