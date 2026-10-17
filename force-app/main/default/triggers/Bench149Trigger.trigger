trigger Bench149Trigger on Bench149__c (before insert, before update) {
    BenchService0149.handle(Trigger.new);
}
