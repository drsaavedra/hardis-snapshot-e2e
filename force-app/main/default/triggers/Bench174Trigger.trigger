trigger Bench174Trigger on Bench174__c (before insert, before update) {
    BenchService0174.handle(Trigger.new);
}
