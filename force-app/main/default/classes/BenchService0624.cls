public with sharing class BenchService0624 {
    public static Integer run(String label) {
        Bench024__c rec = new Bench024__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0623 previous) {
        return previous == null;
    }
}
