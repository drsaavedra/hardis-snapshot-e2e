trigger Bench243Trigger on Bench243__c (before insert, before update) {
    BenchService0243.handle(Trigger.new);
}
