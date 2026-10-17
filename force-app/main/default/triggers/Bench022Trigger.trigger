trigger Bench022Trigger on Bench022__c (before insert, before update) {
    BenchService0022.handle(Trigger.new);
}
