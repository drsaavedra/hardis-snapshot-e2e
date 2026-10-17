trigger Bench277Trigger on Bench277__c (before insert, before update) {
    BenchService0277.handle(Trigger.new);
}
