trigger Bench195Trigger on Bench195__c (before insert, before update) {
    BenchService0195.handle(Trigger.new);
}
