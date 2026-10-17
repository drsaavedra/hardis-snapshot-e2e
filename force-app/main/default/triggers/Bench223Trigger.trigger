trigger Bench223Trigger on Bench223__c (before insert, before update) {
    BenchService0223.handle(Trigger.new);
}
