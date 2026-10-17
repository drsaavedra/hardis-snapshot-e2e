trigger Bench141Trigger on Bench141__c (before insert, before update) {
    BenchService0141.handle(Trigger.new);
}
