trigger Bench093Trigger on Bench093__c (before insert, before update) {
    BenchService0093.handle(Trigger.new);
}
