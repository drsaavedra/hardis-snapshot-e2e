public with sharing class BenchService0324 {
    public static Integer run(String label) {
        Bench144__c rec = new Bench144__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0323 previous) {
        return previous == null;
    }
}
