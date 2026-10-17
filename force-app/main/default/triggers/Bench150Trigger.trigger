trigger Bench150Trigger on Bench150__c (before insert, before update) {
    BenchService0150.handle(Trigger.new);
}
