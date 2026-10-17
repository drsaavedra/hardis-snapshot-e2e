trigger Bench091Trigger on Bench091__c (before insert, before update) {
    BenchService0091.handle(Trigger.new);
}
