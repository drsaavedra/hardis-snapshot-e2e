trigger Bench268Trigger on Bench268__c (before insert, before update) {
    BenchService0268.handle(Trigger.new);
}
