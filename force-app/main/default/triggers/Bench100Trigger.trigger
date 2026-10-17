trigger Bench100Trigger on Bench100__c (before insert, before update) {
    BenchService0100.handle(Trigger.new);
}
