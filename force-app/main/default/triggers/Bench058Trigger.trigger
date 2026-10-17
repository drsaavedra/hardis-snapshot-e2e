trigger Bench058Trigger on Bench058__c (before insert, before update) {
    BenchService0058.handle(Trigger.new);
}
