trigger Bench143Trigger on Bench143__c (before insert, before update) {
    BenchService0143.handle(Trigger.new);
}
