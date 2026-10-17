trigger Bench135Trigger on Bench135__c (before insert, before update) {
    BenchService0135.handle(Trigger.new);
}
