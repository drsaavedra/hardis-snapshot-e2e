trigger Bench228Trigger on Bench228__c (before insert, before update) {
    BenchService0228.handle(Trigger.new);
}
