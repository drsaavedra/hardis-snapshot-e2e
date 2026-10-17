public with sharing class BenchService1147 {
    public static Integer run(String label) {
        Bench247__c rec = new Bench247__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService1146 previous) {
        return previous == null;
    }
}
