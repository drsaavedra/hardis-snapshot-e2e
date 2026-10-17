trigger Bench123Trigger on Bench123__c (before insert, before update) {
    BenchService0123.handle(Trigger.new);
}
