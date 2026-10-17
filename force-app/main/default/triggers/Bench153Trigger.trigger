trigger Bench153Trigger on Bench153__c (before insert, before update) {
    BenchService0153.handle(Trigger.new);
}
