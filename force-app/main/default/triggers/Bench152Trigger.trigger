trigger Bench152Trigger on Bench152__c (before insert, before update) {
    BenchService0152.handle(Trigger.new);
}
