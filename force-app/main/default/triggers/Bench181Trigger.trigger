trigger Bench181Trigger on Bench181__c (before insert, before update) {
    BenchService0181.handle(Trigger.new);
}
