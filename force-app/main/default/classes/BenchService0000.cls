public with sharing class BenchService0000 {
    public static Integer run(String label) {
        Bench000__c rec = new Bench000__c(Name = label, F00_Text__c = label);
        return rec.Name.length();
    }
    public static void handle(List<SObject> records) {
        for (SObject record : records) {
            record.put('F00_Text__c', String.valueOf(record.get('Name')));
        }
    }
}
