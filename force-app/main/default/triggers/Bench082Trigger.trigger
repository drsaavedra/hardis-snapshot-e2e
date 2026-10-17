trigger Bench082Trigger on Bench082__c (before insert, before update) {
    BenchService0082.handle(Trigger.new);
}
