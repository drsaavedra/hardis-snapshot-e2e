trigger Bench220Trigger on Bench220__c (before insert, before update) {
    BenchService0220.handle(Trigger.new);
}
