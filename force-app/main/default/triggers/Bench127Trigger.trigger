trigger Bench127Trigger on Bench127__c (before insert, before update) {
    BenchService0127.handle(Trigger.new);
}
