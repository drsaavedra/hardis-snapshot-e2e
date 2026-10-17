public with sharing class BenchService209 {
    public static Integer run(String label) {
        Bench009__c rec = new Bench009__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
