trigger Bench200Trigger on Bench200__c (before insert, before update) {
    BenchService0200.handle(Trigger.new);
}
