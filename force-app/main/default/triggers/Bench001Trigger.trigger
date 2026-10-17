trigger Bench001Trigger on Bench001__c (before insert, before update) {
    BenchService0001.handle(Trigger.new);
}
