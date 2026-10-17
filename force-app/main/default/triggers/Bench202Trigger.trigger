trigger Bench202Trigger on Bench202__c (before insert, before update) {
    BenchService0202.handle(Trigger.new);
}
