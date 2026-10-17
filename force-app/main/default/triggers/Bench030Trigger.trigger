trigger Bench030Trigger on Bench030__c (before insert, before update) {
    BenchService0030.handle(Trigger.new);
}
