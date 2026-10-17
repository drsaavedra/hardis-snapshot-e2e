trigger Bench183Trigger on Bench183__c (before insert, before update) {
    BenchService0183.handle(Trigger.new);
}
