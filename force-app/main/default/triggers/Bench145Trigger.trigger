trigger Bench145Trigger on Bench145__c (before insert, before update) {
    BenchService0145.handle(Trigger.new);
}
