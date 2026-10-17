trigger Bench290Trigger on Bench290__c (before insert, before update) {
    BenchService0290.handle(Trigger.new);
}
