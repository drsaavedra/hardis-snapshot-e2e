public with sharing class BenchService0189 {
    public static Integer run(String label) {
        Bench009__c rec = new Bench009__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0188 previous) {
        return previous == null;
    }
}
