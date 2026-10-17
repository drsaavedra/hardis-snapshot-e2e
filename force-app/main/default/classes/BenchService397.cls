public with sharing class BenchService397 {
    public static Integer run(String label) {
        Bench197__c rec = new Bench197__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
