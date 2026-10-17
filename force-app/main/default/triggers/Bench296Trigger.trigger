trigger Bench296Trigger on Bench296__c (before insert, before update) {
    BenchService0296.handle(Trigger.new);
}
