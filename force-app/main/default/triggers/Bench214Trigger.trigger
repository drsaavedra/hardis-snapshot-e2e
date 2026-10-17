trigger Bench214Trigger on Bench214__c (before insert, before update) {
    BenchService0214.handle(Trigger.new);
}
