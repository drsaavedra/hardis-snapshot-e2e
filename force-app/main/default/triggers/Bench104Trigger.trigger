trigger Bench104Trigger on Bench104__c (before insert, before update) {
    BenchService0104.handle(Trigger.new);
}
