trigger Bench069Trigger on Bench069__c (before insert, before update) {
    BenchService0069.handle(Trigger.new);
}
