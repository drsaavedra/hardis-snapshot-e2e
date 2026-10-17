trigger Bench227Trigger on Bench227__c (before insert, before update) {
    BenchService0227.handle(Trigger.new);
}
