trigger Bench295Trigger on Bench295__c (before insert, before update) {
    BenchService0295.handle(Trigger.new);
}
