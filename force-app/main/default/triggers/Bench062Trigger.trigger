trigger Bench062Trigger on Bench062__c (before insert, before update) {
    BenchService0062.handle(Trigger.new);
}
