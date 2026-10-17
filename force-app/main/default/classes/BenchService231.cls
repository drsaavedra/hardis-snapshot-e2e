public with sharing class BenchService231 {
    public static Integer run(String label) {
        Bench031__c rec = new Bench031__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
