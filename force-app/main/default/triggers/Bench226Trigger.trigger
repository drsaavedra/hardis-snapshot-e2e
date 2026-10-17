trigger Bench226Trigger on Bench226__c (before insert, before update) {
    BenchService0226.handle(Trigger.new);
}
