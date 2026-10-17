trigger Bench101Trigger on Bench101__c (before insert, before update) {
    BenchService0101.handle(Trigger.new);
}
