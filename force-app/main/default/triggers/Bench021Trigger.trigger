trigger Bench021Trigger on Bench021__c (before insert, before update) {
    BenchService0021.handle(Trigger.new);
}
