trigger Bench099Trigger on Bench099__c (before insert, before update) {
    BenchService0099.handle(Trigger.new);
}
