trigger Bench165Trigger on Bench165__c (before insert, before update) {
    BenchService0165.handle(Trigger.new);
}
