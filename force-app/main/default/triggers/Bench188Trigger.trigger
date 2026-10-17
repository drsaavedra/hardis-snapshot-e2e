trigger Bench188Trigger on Bench188__c (before insert, before update) {
    BenchService0188.handle(Trigger.new);
}
