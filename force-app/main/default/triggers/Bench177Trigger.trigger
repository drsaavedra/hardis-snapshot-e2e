trigger Bench177Trigger on Bench177__c (before insert, before update) {
    BenchService0177.handle(Trigger.new);
}
