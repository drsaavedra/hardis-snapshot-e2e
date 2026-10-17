trigger Bench110Trigger on Bench110__c (before insert, before update) {
    BenchService0110.handle(Trigger.new);
}
