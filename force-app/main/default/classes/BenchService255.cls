public with sharing class BenchService255 {
    public static Integer run(String label) {
        Bench055__c rec = new Bench055__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
}
