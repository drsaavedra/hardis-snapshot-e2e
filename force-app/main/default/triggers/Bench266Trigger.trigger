trigger Bench266Trigger on Bench266__c (before insert, before update) {
    BenchService0266.handle(Trigger.new);
}
