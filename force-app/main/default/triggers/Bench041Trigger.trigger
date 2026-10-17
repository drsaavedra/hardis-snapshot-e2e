trigger Bench041Trigger on Bench041__c (before insert, before update) {
    BenchService0041.handle(Trigger.new);
}
