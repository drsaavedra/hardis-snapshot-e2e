trigger Bench139Trigger on Bench139__c (before insert, before update) {
    BenchService0139.handle(Trigger.new);
}
