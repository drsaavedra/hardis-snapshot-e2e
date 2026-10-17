trigger Bench011Trigger on Bench011__c (before insert, before update) {
    BenchService0011.handle(Trigger.new);
}
