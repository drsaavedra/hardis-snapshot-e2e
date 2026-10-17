trigger Bench193Trigger on Bench193__c (before insert, before update) {
    BenchService0193.handle(Trigger.new);
}
