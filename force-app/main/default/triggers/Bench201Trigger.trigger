trigger Bench201Trigger on Bench201__c (before insert, before update) {
    BenchService0201.handle(Trigger.new);
}
