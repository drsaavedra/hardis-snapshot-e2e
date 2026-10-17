public with sharing class BenchService0887 {
    public static Integer run(String label) {
        Bench287__c rec = new Bench287__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0886 previous) {
        return previous == null;
    }
}
