trigger Bench210Trigger on Bench210__c (before insert, before update) {
    BenchService0210.handle(Trigger.new);
}
