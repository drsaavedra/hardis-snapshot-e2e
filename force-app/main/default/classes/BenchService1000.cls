public with sharing class BenchService1000 {
    public static Integer run(String label) {
        Bench100__c rec = new Bench100__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0999 previous) {
        return previous == null;
    }
}
