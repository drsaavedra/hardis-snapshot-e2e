public with sharing class BenchService1123 {
    public static Integer run(String label) {
        Bench223__c rec = new Bench223__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService1122 previous) {
        return previous == null;
    }
}
