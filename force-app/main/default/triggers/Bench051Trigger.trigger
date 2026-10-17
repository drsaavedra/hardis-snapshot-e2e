trigger Bench051Trigger on Bench051__c (before insert, before update) {
    BenchService0051.handle(Trigger.new);
}
