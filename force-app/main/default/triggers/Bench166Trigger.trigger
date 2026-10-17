trigger Bench166Trigger on Bench166__c (before insert, before update) {
    BenchService0166.handle(Trigger.new);
}
