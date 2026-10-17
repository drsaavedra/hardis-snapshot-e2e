public with sharing class BenchService176 {
    public static Integer run(String label) {
        Bench176__c rec = new Bench176__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
