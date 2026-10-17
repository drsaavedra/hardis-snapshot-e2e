trigger Bench288Trigger on Bench288__c (before insert, before update) {
    BenchService0288.handle(Trigger.new);
}
