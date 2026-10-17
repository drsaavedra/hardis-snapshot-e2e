trigger Bench298Trigger on Bench298__c (before insert, before update) {
    BenchService0298.handle(Trigger.new);
}
