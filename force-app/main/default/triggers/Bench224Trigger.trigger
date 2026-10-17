trigger Bench224Trigger on Bench224__c (before insert, before update) {
    BenchService0224.handle(Trigger.new);
}
