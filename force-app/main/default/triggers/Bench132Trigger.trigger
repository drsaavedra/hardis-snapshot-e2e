trigger Bench132Trigger on Bench132__c (before insert, before update) {
    BenchService0132.handle(Trigger.new);
}
