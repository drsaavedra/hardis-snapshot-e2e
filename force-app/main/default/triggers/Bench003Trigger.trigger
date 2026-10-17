trigger Bench003Trigger on Bench003__c (before insert, before update) {
    BenchService0003.handle(Trigger.new);
}
