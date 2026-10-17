trigger Bench187Trigger on Bench187__c (before insert, before update) {
    BenchService0187.handle(Trigger.new);
}
