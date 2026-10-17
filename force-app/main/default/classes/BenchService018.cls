public with sharing class BenchService018 {
    public static Integer run(String label) {
        Bench018__c rec = new Bench018__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
