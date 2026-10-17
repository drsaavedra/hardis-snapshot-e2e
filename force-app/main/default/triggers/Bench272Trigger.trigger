trigger Bench272Trigger on Bench272__c (before insert, before update) {
    BenchService0272.handle(Trigger.new);
}
