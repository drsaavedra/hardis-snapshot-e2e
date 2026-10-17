trigger Bench218Trigger on Bench218__c (before insert, before update) {
    BenchService0218.handle(Trigger.new);
}
