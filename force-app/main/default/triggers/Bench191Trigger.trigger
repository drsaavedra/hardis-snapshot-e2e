trigger Bench191Trigger on Bench191__c (before insert, before update) {
    BenchService0191.handle(Trigger.new);
}
