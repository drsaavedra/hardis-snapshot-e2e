trigger Bench235Trigger on Bench235__c (before insert, before update) {
    BenchService0235.handle(Trigger.new);
}
