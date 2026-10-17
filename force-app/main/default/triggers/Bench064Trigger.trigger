trigger Bench064Trigger on Bench064__c (before insert, before update) {
    BenchService0064.handle(Trigger.new);
}
