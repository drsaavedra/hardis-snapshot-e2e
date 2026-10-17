trigger Bench159Trigger on Bench159__c (before insert, before update) {
    BenchService0159.handle(Trigger.new);
}
