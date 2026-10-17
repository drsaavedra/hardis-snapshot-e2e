trigger Bench116Trigger on Bench116__c (before insert, before update) {
    BenchService0116.handle(Trigger.new);
}
