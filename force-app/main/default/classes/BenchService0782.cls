public with sharing class BenchService0782 {
    public static Integer run(String label) {
        Bench182__c rec = new Bench182__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0781 previous) {
        return previous == null;
    }
}
