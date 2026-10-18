public with sharing class BenchService0457 {
    public static Integer run(String label) {
        Bench097__c rec = new Bench097__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0456 previous) {
        return previous == null;
    }
}
