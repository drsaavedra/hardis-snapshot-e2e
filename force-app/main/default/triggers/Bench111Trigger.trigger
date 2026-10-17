trigger Bench111Trigger on Bench111__c (before insert, before update) {
    BenchService0111.handle(Trigger.new);
}
