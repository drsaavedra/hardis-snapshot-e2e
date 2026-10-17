public with sharing class BenchService0074 {
    public static Integer run(String label) {
        Bench074__c rec = new Bench074__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0073 previous) {
        return previous == null;
    }
}
