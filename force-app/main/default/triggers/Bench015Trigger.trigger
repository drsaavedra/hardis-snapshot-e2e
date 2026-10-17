trigger Bench015Trigger on Bench015__c (before insert, before update) {
    BenchService0015.handle(Trigger.new);
}
