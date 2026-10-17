trigger Bench294Trigger on Bench294__c (before insert, before update) {
    BenchService0294.handle(Trigger.new);
}
