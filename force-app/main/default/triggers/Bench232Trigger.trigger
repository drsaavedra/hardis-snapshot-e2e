trigger Bench232Trigger on Bench232__c (before insert, before update) {
    BenchService0232.handle(Trigger.new);
}
