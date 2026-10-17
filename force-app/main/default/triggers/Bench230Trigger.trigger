trigger Bench230Trigger on Bench230__c (before insert, before update) {
    BenchService0230.handle(Trigger.new);
}
