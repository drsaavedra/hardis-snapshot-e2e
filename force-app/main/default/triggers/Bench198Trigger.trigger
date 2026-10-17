trigger Bench198Trigger on Bench198__c (before insert, before update) {
    BenchService0198.handle(Trigger.new);
}
