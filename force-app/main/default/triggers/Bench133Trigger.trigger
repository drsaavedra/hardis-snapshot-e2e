trigger Bench133Trigger on Bench133__c (before insert, before update) {
    BenchService0133.handle(Trigger.new);
}
