public with sharing class BenchService0890 {
    public static Integer run(String label) {
        Bench290__c rec = new Bench290__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0889 previous) {
        return previous == null;
    }
}
