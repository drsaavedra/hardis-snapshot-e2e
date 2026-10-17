trigger Bench081Trigger on Bench081__c (before insert, before update) {
    BenchService0081.handle(Trigger.new);
}
