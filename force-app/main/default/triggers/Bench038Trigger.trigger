trigger Bench038Trigger on Bench038__c (before insert, before update) {
    BenchService0038.handle(Trigger.new);
}
