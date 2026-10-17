public with sharing class BenchService229 {
    public static Integer run(String label) {
        Bench029__c rec = new Bench029__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
