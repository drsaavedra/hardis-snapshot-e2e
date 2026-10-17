trigger Bench060Trigger on Bench060__c (before insert, before update) {
    BenchService0060.handle(Trigger.new);
}
