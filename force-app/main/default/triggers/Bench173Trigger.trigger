trigger Bench173Trigger on Bench173__c (before insert, before update) {
    BenchService0173.handle(Trigger.new);
}
