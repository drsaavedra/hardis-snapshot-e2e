trigger Bench088Trigger on Bench088__c (before insert, before update) {
    BenchService0088.handle(Trigger.new);
}
