trigger Bench259Trigger on Bench259__c (before insert, before update) {
    BenchService0259.handle(Trigger.new);
}
