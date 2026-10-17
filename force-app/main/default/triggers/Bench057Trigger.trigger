trigger Bench057Trigger on Bench057__c (before insert, before update) {
    BenchService0057.handle(Trigger.new);
}
