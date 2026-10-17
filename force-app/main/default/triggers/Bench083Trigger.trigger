trigger Bench083Trigger on Bench083__c (before insert, before update) {
    BenchService0083.handle(Trigger.new);
}
