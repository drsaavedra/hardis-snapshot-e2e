trigger Bench095Trigger on Bench095__c (before insert, before update) {
    BenchService0095.handle(Trigger.new);
}
