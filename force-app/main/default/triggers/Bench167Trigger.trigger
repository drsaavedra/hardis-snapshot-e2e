trigger Bench167Trigger on Bench167__c (before insert, before update) {
    BenchService0167.handle(Trigger.new);
}
