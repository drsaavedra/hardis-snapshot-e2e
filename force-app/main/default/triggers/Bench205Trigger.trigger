trigger Bench205Trigger on Bench205__c (before insert, before update) {
    BenchService0205.handle(Trigger.new);
}
