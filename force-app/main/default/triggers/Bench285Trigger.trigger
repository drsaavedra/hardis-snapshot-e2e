trigger Bench285Trigger on Bench285__c (before insert, before update) {
    BenchService0285.handle(Trigger.new);
}
