trigger Bench103Trigger on Bench103__c (before insert, before update) {
    BenchService0103.handle(Trigger.new);
}
