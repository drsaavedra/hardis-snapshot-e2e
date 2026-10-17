trigger Bench206Trigger on Bench206__c (before insert, before update) {
    BenchService0206.handle(Trigger.new);
}
