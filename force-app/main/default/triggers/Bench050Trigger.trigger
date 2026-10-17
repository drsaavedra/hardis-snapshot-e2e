trigger Bench050Trigger on Bench050__c (before insert, before update) {
    BenchService0050.handle(Trigger.new);
}
