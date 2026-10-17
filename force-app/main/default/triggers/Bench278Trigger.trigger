trigger Bench278Trigger on Bench278__c (before insert, before update) {
    BenchService0278.handle(Trigger.new);
}
