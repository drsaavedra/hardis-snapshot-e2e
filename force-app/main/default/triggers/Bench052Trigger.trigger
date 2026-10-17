trigger Bench052Trigger on Bench052__c (before insert, before update) {
    BenchService0052.handle(Trigger.new);
}
