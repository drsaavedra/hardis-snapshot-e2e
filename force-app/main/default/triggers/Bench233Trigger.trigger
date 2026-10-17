trigger Bench233Trigger on Bench233__c (before insert, before update) {
    BenchService0233.handle(Trigger.new);
}
