trigger Bench098Trigger on Bench098__c (before insert, before update) {
    BenchService0098.handle(Trigger.new);
}
