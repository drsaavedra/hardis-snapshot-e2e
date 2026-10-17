trigger Bench121Trigger on Bench121__c (before insert, before update) {
    BenchService0121.handle(Trigger.new);
}
