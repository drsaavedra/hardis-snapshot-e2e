trigger Bench196Trigger on Bench196__c (before insert, before update) {
    BenchService0196.handle(Trigger.new);
}
