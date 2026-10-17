trigger Bench229Trigger on Bench229__c (before insert, before update) {
    BenchService0229.handle(Trigger.new);
}
