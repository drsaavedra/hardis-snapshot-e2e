trigger Bench126Trigger on Bench126__c (before insert, before update) {
    BenchService0126.handle(Trigger.new);
}
