trigger Bench147Trigger on Bench147__c (before insert, before update) {
    BenchService0147.handle(Trigger.new);
}
