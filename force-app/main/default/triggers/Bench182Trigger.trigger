trigger Bench182Trigger on Bench182__c (before insert, before update) {
    BenchService0182.handle(Trigger.new);
}
