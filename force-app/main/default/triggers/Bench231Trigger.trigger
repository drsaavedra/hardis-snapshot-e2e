trigger Bench231Trigger on Bench231__c (before insert, before update) {
    BenchService0231.handle(Trigger.new);
}
