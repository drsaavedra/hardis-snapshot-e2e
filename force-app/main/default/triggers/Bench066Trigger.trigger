trigger Bench066Trigger on Bench066__c (before insert, before update) {
    BenchService0066.handle(Trigger.new);
}
