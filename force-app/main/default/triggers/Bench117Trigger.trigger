trigger Bench117Trigger on Bench117__c (before insert, before update) {
    BenchService0117.handle(Trigger.new);
}
