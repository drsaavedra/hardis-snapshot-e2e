trigger Bench286Trigger on Bench286__c (before insert, before update) {
    BenchService0286.handle(Trigger.new);
}
