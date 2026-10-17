trigger Bench009Trigger on Bench009__c (before insert, before update) {
    BenchService0009.handle(Trigger.new);
}
