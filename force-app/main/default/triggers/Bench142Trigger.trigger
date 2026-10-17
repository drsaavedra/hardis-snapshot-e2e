trigger Bench142Trigger on Bench142__c (before insert, before update) {
    BenchService0142.handle(Trigger.new);
}
