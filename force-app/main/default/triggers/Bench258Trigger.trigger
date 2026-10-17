trigger Bench258Trigger on Bench258__c (before insert, before update) {
    BenchService0258.handle(Trigger.new);
}
