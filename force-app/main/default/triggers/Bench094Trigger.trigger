trigger Bench094Trigger on Bench094__c (before insert, before update) {
    BenchService0094.handle(Trigger.new);
}
