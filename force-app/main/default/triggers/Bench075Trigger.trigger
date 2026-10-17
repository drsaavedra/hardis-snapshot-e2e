trigger Bench075Trigger on Bench075__c (before insert, before update) {
    BenchService0075.handle(Trigger.new);
}
