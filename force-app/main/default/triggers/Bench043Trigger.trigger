trigger Bench043Trigger on Bench043__c (before insert, before update) {
    BenchService0043.handle(Trigger.new);
}
