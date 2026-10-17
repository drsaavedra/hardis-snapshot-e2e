trigger Bench189Trigger on Bench189__c (before insert, before update) {
    BenchService0189.handle(Trigger.new);
}
