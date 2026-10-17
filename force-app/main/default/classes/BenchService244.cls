public with sharing class BenchService244 {
    public static Integer run(String label) {
        Bench044__c rec = new Bench044__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
