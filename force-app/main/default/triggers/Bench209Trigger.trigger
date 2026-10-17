trigger Bench209Trigger on Bench209__c (before insert, before update) {
    BenchService0209.handle(Trigger.new);
}
