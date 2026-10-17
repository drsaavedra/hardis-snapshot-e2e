trigger Bench109Trigger on Bench109__c (before insert, before update) {
    BenchService0109.handle(Trigger.new);
}
