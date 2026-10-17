trigger Bench013Trigger on Bench013__c (before insert, before update) {
    BenchService0013.handle(Trigger.new);
}
