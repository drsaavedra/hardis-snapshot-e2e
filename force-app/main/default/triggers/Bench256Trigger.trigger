trigger Bench256Trigger on Bench256__c (before insert, before update) {
    BenchService0256.handle(Trigger.new);
}
