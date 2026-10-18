public with sharing class BenchService0001 {
    public static Integer run(String label) {
        Bench001__c rec = new Bench001__c(Name = label, F00_Text__c = label);
        return rec.Name.trim().length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0000 previous) {
        return previous == null;
    }
}
