trigger Bench163Trigger on Bench163__c (before insert, before update) {
    BenchService0163.handle(Trigger.new);
}
