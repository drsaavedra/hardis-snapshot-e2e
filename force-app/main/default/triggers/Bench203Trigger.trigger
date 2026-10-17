trigger Bench203Trigger on Bench203__c (before insert, before update) {
    BenchService0203.handle(Trigger.new);
}
