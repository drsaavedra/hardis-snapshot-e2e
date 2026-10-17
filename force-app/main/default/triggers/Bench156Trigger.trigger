trigger Bench156Trigger on Bench156__c (before insert, before update) {
    BenchService0156.handle(Trigger.new);
}
