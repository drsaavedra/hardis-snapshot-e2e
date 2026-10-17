trigger Bench074Trigger on Bench074__c (before insert, before update) {
    BenchService0074.handle(Trigger.new);
}
