public with sharing class BenchService291 {
    public static Integer run(String label) {
        Bench091__c rec = new Bench091__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
