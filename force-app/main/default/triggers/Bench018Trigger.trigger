trigger Bench018Trigger on Bench018__c (before insert, before update) {
    BenchService0018.handle(Trigger.new);
}
