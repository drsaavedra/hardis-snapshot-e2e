trigger Bench053Trigger on Bench053__c (before insert, before update) {
    BenchService0053.handle(Trigger.new);
}
