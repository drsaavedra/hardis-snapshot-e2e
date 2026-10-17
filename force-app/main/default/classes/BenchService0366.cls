public with sharing class BenchService0366 {
    public static Integer run(String label) {
        Bench066__c rec = new Bench066__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0365 previous) {
        return previous == null;
    }
}
