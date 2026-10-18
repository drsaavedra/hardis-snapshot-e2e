public with sharing class BenchService0281 {
    public static Integer run(String label) {
        Bench101__c rec = new Bench101__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0280 previous) {
        return previous == null;
    }
}
