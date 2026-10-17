trigger Bench071Trigger on Bench071__c (before insert, before update) {
    BenchService0071.handle(Trigger.new);
}
