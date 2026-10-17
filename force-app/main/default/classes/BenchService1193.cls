public with sharing class BenchService1193 {
    public static Integer run(String label) {
        Bench293__c rec = new Bench293__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService1192 previous) {
        return previous == null;
    }
}
