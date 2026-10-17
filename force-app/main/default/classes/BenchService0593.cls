public with sharing class BenchService0593 {
    public static Integer run(String label) {
        Bench293__c rec = new Bench293__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0592 previous) {
        return previous == null;
    }
}
