trigger Bench106Trigger on Bench106__c (before insert, before update) {
    BenchService0106.handle(Trigger.new);
}
