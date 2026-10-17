public with sharing class BenchService1040 {
    public static Integer run(String label) {
        Bench140__c rec = new Bench140__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService1039 previous) {
        return previous == null;
    }
}
