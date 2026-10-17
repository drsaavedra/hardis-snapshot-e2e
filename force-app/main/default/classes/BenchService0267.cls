public with sharing class BenchService0267 {
    public static Integer run(String label) {
        Bench267__c rec = new Bench267__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0266 previous) {
        return previous == null;
    }
}
