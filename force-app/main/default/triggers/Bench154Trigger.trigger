trigger Bench154Trigger on Bench154__c (before insert, before update) {
    BenchService0154.handle(Trigger.new);
}
