trigger Bench194Trigger on Bench194__c (before insert, before update) {
    BenchService0194.handle(Trigger.new);
}
