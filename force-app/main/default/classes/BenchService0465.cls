public with sharing class BenchService0465 {
    public static Integer run(String label) {
        Bench105__c rec = new Bench105__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0464 previous) {
        return previous == null;
    }
}
