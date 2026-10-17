trigger Bench263Trigger on Bench263__c (before insert, before update) {
    BenchService0263.handle(Trigger.new);
}
