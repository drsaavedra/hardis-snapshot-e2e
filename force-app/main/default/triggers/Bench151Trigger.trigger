trigger Bench151Trigger on Bench151__c (before insert, before update) {
    BenchService0151.handle(Trigger.new);
}
