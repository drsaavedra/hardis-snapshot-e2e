trigger Bench240Trigger on Bench240__c (before insert, before update) {
    BenchService0240.handle(Trigger.new);
}
