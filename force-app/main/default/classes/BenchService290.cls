public with sharing class BenchService290 {
    public static Integer run(String label) {
        Bench090__c rec = new Bench090__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
