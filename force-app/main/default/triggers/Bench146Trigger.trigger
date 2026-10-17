trigger Bench146Trigger on Bench146__c (before insert, before update) {
    BenchService0146.handle(Trigger.new);
}
