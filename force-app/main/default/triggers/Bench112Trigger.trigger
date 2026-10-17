trigger Bench112Trigger on Bench112__c (before insert, before update) {
    BenchService0112.handle(Trigger.new);
}
