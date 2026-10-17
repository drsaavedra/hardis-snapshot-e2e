public with sharing class BenchService127 {
    public static Integer run(String label) {
        Bench127__c rec = new Bench127__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
