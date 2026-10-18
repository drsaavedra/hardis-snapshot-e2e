public with sharing class BenchService0418 {
    public static Integer run(String label) {
        Bench058__c rec = new Bench058__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0417 previous) {
        return previous == null;
    }
}
