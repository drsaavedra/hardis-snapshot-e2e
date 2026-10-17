trigger Bench085Trigger on Bench085__c (before insert, before update) {
    BenchService0085.handle(Trigger.new);
}
