trigger Bench055Trigger on Bench055__c (before insert, before update) {
    BenchService0055.handle(Trigger.new);
}
