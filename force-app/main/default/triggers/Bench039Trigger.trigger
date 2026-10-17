trigger Bench039Trigger on Bench039__c (before insert, before update) {
    BenchService0039.handle(Trigger.new);
}
