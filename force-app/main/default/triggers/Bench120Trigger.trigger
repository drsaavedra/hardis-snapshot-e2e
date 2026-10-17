trigger Bench120Trigger on Bench120__c (before insert, before update) {
    BenchService0120.handle(Trigger.new);
}
