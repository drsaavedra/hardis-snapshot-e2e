public with sharing class BenchService0274 {
    public static Integer run(String label) {
        Bench094__c rec = new Bench094__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0273 previous) {
        return previous == null;
    }
}
