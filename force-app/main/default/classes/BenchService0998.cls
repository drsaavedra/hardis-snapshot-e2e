public with sharing class BenchService0998 {
    public static Integer run(String label) {
        Bench098__c rec = new Bench098__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0997 previous) {
        return previous == null;
    }
}
