trigger Bench213Trigger on Bench213__c (before insert, before update) {
    BenchService0213.handle(Trigger.new);
}
