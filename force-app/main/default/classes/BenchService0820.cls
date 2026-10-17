public with sharing class BenchService0820 {
    public static Integer run(String label) {
        Bench220__c rec = new Bench220__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0819 previous) {
        return previous == null;
    }
}
