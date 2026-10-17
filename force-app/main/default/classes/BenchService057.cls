public with sharing class BenchService057 {
    public static Integer run(String label) {
        Bench057__c rec = new Bench057__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
