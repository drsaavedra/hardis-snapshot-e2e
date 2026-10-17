trigger Bench234Trigger on Bench234__c (before insert, before update) {
    BenchService0234.handle(Trigger.new);
}
