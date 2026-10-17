trigger Bench096Trigger on Bench096__c (before insert, before update) {
    BenchService0096.handle(Trigger.new);
}
