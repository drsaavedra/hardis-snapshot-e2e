trigger Bench157Trigger on Bench157__c (before insert, before update) {
    BenchService0157.handle(Trigger.new);
}
