trigger Bench005Trigger on Bench005__c (before insert, before update) {
    BenchService0005.handle(Trigger.new);
}
