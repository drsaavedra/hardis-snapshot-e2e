trigger Bench114Trigger on Bench114__c (before insert, before update) {
    BenchService0114.handle(Trigger.new);
}
