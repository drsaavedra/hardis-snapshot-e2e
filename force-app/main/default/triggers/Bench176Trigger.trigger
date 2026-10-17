trigger Bench176Trigger on Bench176__c (before insert, before update) {
    BenchService0176.handle(Trigger.new);
}
