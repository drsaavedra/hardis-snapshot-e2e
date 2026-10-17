public with sharing class BenchService168 {
    public static Integer run(String label) {
        Bench168__c rec = new Bench168__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
