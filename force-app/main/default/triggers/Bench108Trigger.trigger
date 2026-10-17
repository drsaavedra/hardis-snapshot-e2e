trigger Bench108Trigger on Bench108__c (before insert, before update) {
    BenchService0108.handle(Trigger.new);
}
