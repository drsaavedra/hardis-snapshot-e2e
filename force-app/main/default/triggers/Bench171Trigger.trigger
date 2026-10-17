trigger Bench171Trigger on Bench171__c (before insert, before update) {
    BenchService0171.handle(Trigger.new);
}
