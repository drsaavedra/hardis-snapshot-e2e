public with sharing class BenchService0318 {
    public static Integer run(String label) {
        Bench138__c rec = new Bench138__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0317 previous) {
        return previous == null;
    }
}
