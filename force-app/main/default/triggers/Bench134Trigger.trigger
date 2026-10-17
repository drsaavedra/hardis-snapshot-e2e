trigger Bench134Trigger on Bench134__c (before insert, before update) {
    BenchService0134.handle(Trigger.new);
}
