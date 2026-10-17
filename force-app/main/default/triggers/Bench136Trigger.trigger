trigger Bench136Trigger on Bench136__c (before insert, before update) {
    BenchService0136.handle(Trigger.new);
}
