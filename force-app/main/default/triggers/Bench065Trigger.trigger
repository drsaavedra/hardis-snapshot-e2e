trigger Bench065Trigger on Bench065__c (before insert, before update) {
    BenchService0065.handle(Trigger.new);
}
