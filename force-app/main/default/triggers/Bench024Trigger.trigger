trigger Bench024Trigger on Bench024__c (before insert, before update) {
    BenchService0024.handle(Trigger.new);
}
