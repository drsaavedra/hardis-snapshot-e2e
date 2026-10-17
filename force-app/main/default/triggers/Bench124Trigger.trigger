trigger Bench124Trigger on Bench124__c (before insert, before update) {
    BenchService0124.handle(Trigger.new);
}
