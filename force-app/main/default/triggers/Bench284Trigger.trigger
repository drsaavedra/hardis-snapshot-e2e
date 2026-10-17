trigger Bench284Trigger on Bench284__c (before insert, before update) {
    BenchService0284.handle(Trigger.new);
}
