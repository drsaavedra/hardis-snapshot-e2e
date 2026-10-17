trigger Bench105Trigger on Bench105__c (before insert, before update) {
    BenchService0105.handle(Trigger.new);
}
