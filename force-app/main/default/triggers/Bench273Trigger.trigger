trigger Bench273Trigger on Bench273__c (before insert, before update) {
    BenchService0273.handle(Trigger.new);
}
