trigger Bench042Trigger on Bench042__c (before insert, before update) {
    BenchService0042.handle(Trigger.new);
}
