trigger Bench078Trigger on Bench078__c (before insert, before update) {
    BenchService0078.handle(Trigger.new);
}
