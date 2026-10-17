trigger Bench004Trigger on Bench004__c (before insert, before update) {
    BenchService0004.handle(Trigger.new);
}
