trigger Bench036Trigger on Bench036__c (before insert, before update) {
    BenchService0036.handle(Trigger.new);
}
