trigger Bench244Trigger on Bench244__c (before insert, before update) {
    BenchService0244.handle(Trigger.new);
}
