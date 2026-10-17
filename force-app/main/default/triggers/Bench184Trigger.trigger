trigger Bench184Trigger on Bench184__c (before insert, before update) {
    BenchService0184.handle(Trigger.new);
}
