trigger Bench034Trigger on Bench034__c (before insert, before update) {
    BenchService0034.handle(Trigger.new);
}
