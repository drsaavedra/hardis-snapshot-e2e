trigger Bench180Trigger on Bench180__c (before insert, before update) {
    BenchService0180.handle(Trigger.new);
}
