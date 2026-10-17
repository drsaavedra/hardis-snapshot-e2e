trigger Bench044Trigger on Bench044__c (before insert, before update) {
    BenchService0044.handle(Trigger.new);
}
