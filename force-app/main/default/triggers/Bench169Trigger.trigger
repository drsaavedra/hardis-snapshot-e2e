trigger Bench169Trigger on Bench169__c (before insert, before update) {
    BenchService0169.handle(Trigger.new);
}
