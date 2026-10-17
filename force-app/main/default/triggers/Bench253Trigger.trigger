trigger Bench253Trigger on Bench253__c (before insert, before update) {
    BenchService0253.handle(Trigger.new);
}
