trigger Bench046Trigger on Bench046__c (before insert, before update) {
    BenchService0046.handle(Trigger.new);
}
