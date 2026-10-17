trigger Bench222Trigger on Bench222__c (before insert, before update) {
    BenchService0222.handle(Trigger.new);
}
