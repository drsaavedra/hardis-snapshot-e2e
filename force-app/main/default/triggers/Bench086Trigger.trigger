trigger Bench086Trigger on Bench086__c (before insert, before update) {
    BenchService0086.handle(Trigger.new);
}
