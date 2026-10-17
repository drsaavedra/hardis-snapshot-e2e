trigger Bench028Trigger on Bench028__c (before insert, before update) {
    BenchService0028.handle(Trigger.new);
}
