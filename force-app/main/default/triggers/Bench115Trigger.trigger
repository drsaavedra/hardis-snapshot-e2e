trigger Bench115Trigger on Bench115__c (before insert, before update) {
    BenchService0115.handle(Trigger.new);
}
