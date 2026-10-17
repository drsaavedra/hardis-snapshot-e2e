trigger Bench241Trigger on Bench241__c (before insert, before update) {
    BenchService0241.handle(Trigger.new);
}
