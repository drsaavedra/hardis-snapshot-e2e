trigger Bench161Trigger on Bench161__c (before insert, before update) {
    BenchService0161.handle(Trigger.new);
}
