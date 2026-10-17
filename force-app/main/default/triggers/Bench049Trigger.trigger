trigger Bench049Trigger on Bench049__c (before insert, before update) {
    BenchService0049.handle(Trigger.new);
}
