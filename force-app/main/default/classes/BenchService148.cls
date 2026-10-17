public with sharing class BenchService148 {
    public static Integer run(String label) {
        Bench148__c rec = new Bench148__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
