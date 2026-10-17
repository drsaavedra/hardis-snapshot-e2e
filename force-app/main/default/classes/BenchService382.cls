public with sharing class BenchService382 {
    public static Integer run(String label) {
        Bench182__c rec = new Bench182__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
