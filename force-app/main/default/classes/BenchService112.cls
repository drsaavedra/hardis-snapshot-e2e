public with sharing class BenchService112 {
    public static Integer run(String label) {
        Bench112__c rec = new Bench112__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
