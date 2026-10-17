trigger Bench079Trigger on Bench079__c (before insert, before update) {
    BenchService0079.handle(Trigger.new);
}
