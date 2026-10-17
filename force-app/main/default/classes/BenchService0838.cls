public with sharing class BenchService0838 {
    public static Integer run(String label) {
        Bench238__c rec = new Bench238__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0837 previous) {
        return previous == null;
    }
}
