trigger Bench170Trigger on Bench170__c (before insert, before update) {
    BenchService0170.handle(Trigger.new);
}
