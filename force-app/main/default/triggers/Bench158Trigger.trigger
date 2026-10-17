trigger Bench158Trigger on Bench158__c (before insert, before update) {
    BenchService0158.handle(Trigger.new);
}
