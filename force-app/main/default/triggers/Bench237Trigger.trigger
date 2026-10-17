trigger Bench237Trigger on Bench237__c (before insert, before update) {
    BenchService0237.handle(Trigger.new);
}
