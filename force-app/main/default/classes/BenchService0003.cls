public with sharing class BenchService0003 {
    public static Integer run(String label) {
        Bench003__c rec = new Bench003__c(Name = label, F00_Text__c = label);
        return rec.Name.trim().length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0002 previous) {
        return previous == null;
    }
}
