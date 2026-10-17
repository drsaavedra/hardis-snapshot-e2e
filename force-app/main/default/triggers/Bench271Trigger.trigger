trigger Bench271Trigger on Bench271__c (before insert, before update) {
    BenchService0271.handle(Trigger.new);
}
