trigger Bench026Trigger on Bench026__c (before insert, before update) {
    BenchService0026.handle(Trigger.new);
}
