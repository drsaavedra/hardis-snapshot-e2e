trigger Bench293Trigger on Bench293__c (before insert, before update) {
    BenchService0293.handle(Trigger.new);
}
