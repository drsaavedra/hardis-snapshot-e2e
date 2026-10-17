trigger Bench236Trigger on Bench236__c (before insert, before update) {
    BenchService0236.handle(Trigger.new);
}
