trigger Bench275Trigger on Bench275__c (before insert, before update) {
    BenchService0275.handle(Trigger.new);
}
