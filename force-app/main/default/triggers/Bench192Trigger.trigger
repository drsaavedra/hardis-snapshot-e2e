trigger Bench192Trigger on Bench192__c (before insert, before update) {
    BenchService0192.handle(Trigger.new);
}
