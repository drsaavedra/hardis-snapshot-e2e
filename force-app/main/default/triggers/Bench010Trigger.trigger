trigger Bench010Trigger on Bench010__c (before insert, before update) {
    BenchService0010.handle(Trigger.new);
}
