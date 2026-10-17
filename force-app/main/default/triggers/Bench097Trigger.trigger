trigger Bench097Trigger on Bench097__c (before insert, before update) {
    BenchService0097.handle(Trigger.new);
}
