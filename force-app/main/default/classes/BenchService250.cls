public with sharing class BenchService250 {
    public static Integer run(String label) {
        Bench050__c rec = new Bench050__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
