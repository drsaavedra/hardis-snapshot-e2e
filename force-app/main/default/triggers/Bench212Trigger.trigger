trigger Bench212Trigger on Bench212__c (before insert, before update) {
    BenchService0212.handle(Trigger.new);
}
