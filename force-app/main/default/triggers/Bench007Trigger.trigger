trigger Bench007Trigger on Bench007__c (before insert, before update) {
    BenchService0007.handle(Trigger.new);
}
