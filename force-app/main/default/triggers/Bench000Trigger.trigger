trigger Bench000Trigger on Bench000__c (before insert, before update) {
    BenchService0000.handle(Trigger.new);
}
