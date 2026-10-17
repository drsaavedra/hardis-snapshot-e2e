trigger Bench031Trigger on Bench031__c (before insert, before update) {
    BenchService0031.handle(Trigger.new);
}
