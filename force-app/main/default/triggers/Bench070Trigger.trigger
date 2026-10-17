trigger Bench070Trigger on Bench070__c (before insert, before update) {
    BenchService0070.handle(Trigger.new);
}
