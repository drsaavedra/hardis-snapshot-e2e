trigger Bench242Trigger on Bench242__c (before insert, before update) {
    BenchService0242.handle(Trigger.new);
}
