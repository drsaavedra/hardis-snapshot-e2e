trigger Bench014Trigger on Bench014__c (before insert, before update) {
    BenchService0014.handle(Trigger.new);
}
