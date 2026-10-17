trigger Bench250Trigger on Bench250__c (before insert, before update) {
    BenchService0250.handle(Trigger.new);
}
