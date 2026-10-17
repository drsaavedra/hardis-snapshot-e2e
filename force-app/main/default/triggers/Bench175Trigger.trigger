trigger Bench175Trigger on Bench175__c (before insert, before update) {
    BenchService0175.handle(Trigger.new);
}
