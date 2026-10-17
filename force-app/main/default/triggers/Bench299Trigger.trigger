trigger Bench299Trigger on Bench299__c (before insert, before update) {
    BenchService0299.handle(Trigger.new);
}
