public with sharing class BenchService219 {
    public static Integer run(String label) {
        Bench019__c rec = new Bench019__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
