trigger Bench077Trigger on Bench077__c (before insert, before update) {
    BenchService0077.handle(Trigger.new);
}
