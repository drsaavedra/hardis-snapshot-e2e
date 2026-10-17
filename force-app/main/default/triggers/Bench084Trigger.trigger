trigger Bench084Trigger on Bench084__c (before insert, before update) {
    BenchService0084.handle(Trigger.new);
}
