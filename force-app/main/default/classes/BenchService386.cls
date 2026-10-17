public with sharing class BenchService386 {
    public static Integer run(String label) {
        Bench186__c rec = new Bench186__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
