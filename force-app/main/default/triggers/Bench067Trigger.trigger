trigger Bench067Trigger on Bench067__c (before insert, before update) {
    BenchService0067.handle(Trigger.new);
}
