trigger Bench073Trigger on Bench073__c (before insert, before update) {
    BenchService0073.handle(Trigger.new);
}
