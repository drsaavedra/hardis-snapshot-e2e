trigger Bench006Trigger on Bench006__c (before insert, before update) {
    BenchService0006.handle(Trigger.new);
}
