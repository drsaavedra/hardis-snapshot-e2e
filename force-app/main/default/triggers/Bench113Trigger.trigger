trigger Bench113Trigger on Bench113__c (before insert, before update) {
    BenchService0113.handle(Trigger.new);
}
