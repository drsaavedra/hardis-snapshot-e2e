trigger Bench217Trigger on Bench217__c (before insert, before update) {
    BenchService0217.handle(Trigger.new);
}
