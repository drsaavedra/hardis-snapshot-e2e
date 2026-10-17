trigger Bench092Trigger on Bench092__c (before insert, before update) {
    BenchService0092.handle(Trigger.new);
}
