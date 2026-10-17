trigger Bench140Trigger on Bench140__c (before insert, before update) {
    BenchService0140.handle(Trigger.new);
}
