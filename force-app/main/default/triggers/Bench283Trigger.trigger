trigger Bench283Trigger on Bench283__c (before insert, before update) {
    BenchService0283.handle(Trigger.new);
}
