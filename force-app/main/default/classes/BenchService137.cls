public with sharing class BenchService137 {
    public static Integer run(String label) {
        Bench137__c rec = new Bench137__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
