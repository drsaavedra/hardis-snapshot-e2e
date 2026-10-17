trigger Bench076Trigger on Bench076__c (before insert, before update) {
    BenchService0076.handle(Trigger.new);
}
