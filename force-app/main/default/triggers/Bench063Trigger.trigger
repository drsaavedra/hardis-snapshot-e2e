trigger Bench063Trigger on Bench063__c (before insert, before update) {
    BenchService0063.handle(Trigger.new);
}
