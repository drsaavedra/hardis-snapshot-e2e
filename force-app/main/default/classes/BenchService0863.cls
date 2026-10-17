public with sharing class BenchService0863 {
    public static Integer run(String label) {
        Bench263__c rec = new Bench263__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0862 previous) {
        return previous == null;
    }
}
