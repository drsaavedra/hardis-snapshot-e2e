trigger Bench199Trigger on Bench199__c (before insert, before update) {
    BenchService0199.handle(Trigger.new);
}
