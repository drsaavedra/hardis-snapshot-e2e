trigger Bench257Trigger on Bench257__c (before insert, before update) {
    BenchService0257.handle(Trigger.new);
}
