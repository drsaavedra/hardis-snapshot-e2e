trigger Bench037Trigger on Bench037__c (before insert, before update) {
    BenchService0037.handle(Trigger.new);
}
