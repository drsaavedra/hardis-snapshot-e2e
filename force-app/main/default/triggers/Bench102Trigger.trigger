trigger Bench102Trigger on Bench102__c (before insert, before update) {
    BenchService0102.handle(Trigger.new);
}
