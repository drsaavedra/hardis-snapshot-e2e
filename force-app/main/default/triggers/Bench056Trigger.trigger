trigger Bench056Trigger on Bench056__c (before insert, before update) {
    BenchService0056.handle(Trigger.new);
}
