trigger Bench148Trigger on Bench148__c (before insert, before update) {
    BenchService0148.handle(Trigger.new);
}
