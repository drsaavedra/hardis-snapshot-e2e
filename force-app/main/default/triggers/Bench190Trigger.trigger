trigger Bench190Trigger on Bench190__c (before insert, before update) {
    BenchService0190.handle(Trigger.new);
}
