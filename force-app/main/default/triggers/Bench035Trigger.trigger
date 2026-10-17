trigger Bench035Trigger on Bench035__c (before insert, before update) {
    BenchService0035.handle(Trigger.new);
}
