trigger Bench238Trigger on Bench238__c (before insert, before update) {
    BenchService0238.handle(Trigger.new);
}
