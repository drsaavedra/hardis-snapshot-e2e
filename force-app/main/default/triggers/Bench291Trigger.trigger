trigger Bench291Trigger on Bench291__c (before insert, before update) {
    BenchService0291.handle(Trigger.new);
}
