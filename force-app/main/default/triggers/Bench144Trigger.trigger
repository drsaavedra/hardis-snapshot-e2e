trigger Bench144Trigger on Bench144__c (before insert, before update) {
    BenchService0144.handle(Trigger.new);
}
