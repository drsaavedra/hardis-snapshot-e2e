trigger Bench017Trigger on Bench017__c (before insert, before update) {
    BenchService0017.handle(Trigger.new);
}
