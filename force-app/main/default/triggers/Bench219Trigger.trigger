trigger Bench219Trigger on Bench219__c (before insert, before update) {
    BenchService0219.handle(Trigger.new);
}
