trigger Bench125Trigger on Bench125__c (before insert, before update) {
    BenchService0125.handle(Trigger.new);
}
