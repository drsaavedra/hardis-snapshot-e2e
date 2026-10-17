trigger Bench008Trigger on Bench008__c (before insert, before update) {
    BenchService0008.handle(Trigger.new);
}
