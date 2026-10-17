trigger Bench274Trigger on Bench274__c (before insert, before update) {
    BenchService0274.handle(Trigger.new);
}
