public with sharing class BenchService284 {
    public static Integer run(String label) {
        Bench084__c rec = new Bench084__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
