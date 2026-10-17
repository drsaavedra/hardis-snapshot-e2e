trigger Bench080Trigger on Bench080__c (before insert, before update) {
    BenchService0080.handle(Trigger.new);
}
