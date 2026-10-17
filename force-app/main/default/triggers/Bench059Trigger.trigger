trigger Bench059Trigger on Bench059__c (before insert, before update) {
    BenchService0059.handle(Trigger.new);
}
