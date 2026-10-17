public with sharing class BenchService0381 {
    public static Integer run(String label) {
        Bench081__c rec = new Bench081__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0380 previous) {
        return previous == null;
    }
}
