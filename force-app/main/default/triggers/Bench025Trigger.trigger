trigger Bench025Trigger on Bench025__c (before insert, before update) {
    BenchService0025.handle(Trigger.new);
}
