trigger Bench267Trigger on Bench267__c (before insert, before update) {
    BenchService0267.handle(Trigger.new);
}
