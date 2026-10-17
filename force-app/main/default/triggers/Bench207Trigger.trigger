trigger Bench207Trigger on Bench207__c (before insert, before update) {
    BenchService0207.handle(Trigger.new);
}
