trigger Bench032Trigger on Bench032__c (before insert, before update) {
    BenchService0032.handle(Trigger.new);
}
