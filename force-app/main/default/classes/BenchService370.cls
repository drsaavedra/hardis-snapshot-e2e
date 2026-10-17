public with sharing class BenchService370 {
    public static Integer run(String label) {
        Bench170__c rec = new Bench170__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
