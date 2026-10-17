trigger Bench251Trigger on Bench251__c (before insert, before update) {
    BenchService0251.handle(Trigger.new);
}
