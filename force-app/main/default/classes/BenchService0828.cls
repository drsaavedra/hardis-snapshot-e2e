public with sharing class BenchService0828 {
    public static Integer run(String label) {
        Bench228__c rec = new Bench228__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
    public static Boolean chain(BenchService0827 previous) {
        return previous == null;
    }
}
