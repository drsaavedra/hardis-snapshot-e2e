trigger Bench292Trigger on Bench292__c (before insert, before update) {
    BenchService0292.handle(Trigger.new);
}
