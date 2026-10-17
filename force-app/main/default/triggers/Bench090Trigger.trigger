trigger Bench090Trigger on Bench090__c (before insert, before update) {
    BenchService0090.handle(Trigger.new);
}
