trigger Bench216Trigger on Bench216__c (before insert, before update) {
    BenchService0216.handle(Trigger.new);
}
