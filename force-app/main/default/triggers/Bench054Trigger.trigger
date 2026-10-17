trigger Bench054Trigger on Bench054__c (before insert, before update) {
    BenchService0054.handle(Trigger.new);
}
