trigger Bench040Trigger on Bench040__c (before insert, before update) {
    BenchService0040.handle(Trigger.new);
}
