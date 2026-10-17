trigger Bench289Trigger on Bench289__c (before insert, before update) {
    BenchService0289.handle(Trigger.new);
}
