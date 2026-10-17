trigger Bench179Trigger on Bench179__c (before insert, before update) {
    BenchService0179.handle(Trigger.new);
}
