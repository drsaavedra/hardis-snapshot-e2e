trigger Bench027Trigger on Bench027__c (before insert, before update) {
    BenchService0027.handle(Trigger.new);
}
