trigger Bench130Trigger on Bench130__c (before insert, before update) {
    BenchService0130.handle(Trigger.new);
}
