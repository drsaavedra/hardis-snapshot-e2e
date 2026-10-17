public with sharing class BenchService0216 {
    public static Integer run(String label) {
        Bench216__c rec = new Bench216__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0215 previous) {
        return previous == null;
    }
}
