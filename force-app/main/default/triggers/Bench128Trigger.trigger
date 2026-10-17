trigger Bench128Trigger on Bench128__c (before insert, before update) {
    BenchService0128.handle(Trigger.new);
}
