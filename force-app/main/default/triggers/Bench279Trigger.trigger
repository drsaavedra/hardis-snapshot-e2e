trigger Bench279Trigger on Bench279__c (before insert, before update) {
    BenchService0279.handle(Trigger.new);
}
