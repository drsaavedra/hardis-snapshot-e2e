trigger Bench155Trigger on Bench155__c (before insert, before update) {
    BenchService0155.handle(Trigger.new);
}
