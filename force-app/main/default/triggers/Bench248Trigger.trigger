trigger Bench248Trigger on Bench248__c (before insert, before update) {
    BenchService0248.handle(Trigger.new);
}
