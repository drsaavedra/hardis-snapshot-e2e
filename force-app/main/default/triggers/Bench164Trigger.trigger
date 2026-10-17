trigger Bench164Trigger on Bench164__c (before insert, before update) {
    BenchService0164.handle(Trigger.new);
}
