trigger Bench211Trigger on Bench211__c (before insert, before update) {
    BenchService0211.handle(Trigger.new);
}
