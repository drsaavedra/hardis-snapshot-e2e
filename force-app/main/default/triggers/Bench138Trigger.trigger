trigger Bench138Trigger on Bench138__c (before insert, before update) {
    BenchService0138.handle(Trigger.new);
}
