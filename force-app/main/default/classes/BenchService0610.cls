public with sharing class BenchService0610 {
    public static Integer run(String label) {
        Bench070__c rec = new Bench070__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0609 previous) {
        return previous == null;
    }
}
