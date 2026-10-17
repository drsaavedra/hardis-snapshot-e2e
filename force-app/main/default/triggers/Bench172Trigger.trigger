trigger Bench172Trigger on Bench172__c (before insert, before update) {
    BenchService0172.handle(Trigger.new);
}
