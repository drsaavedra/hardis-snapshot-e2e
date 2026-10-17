trigger Bench225Trigger on Bench225__c (before insert, before update) {
    BenchService0225.handle(Trigger.new);
}
