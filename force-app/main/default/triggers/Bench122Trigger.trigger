trigger Bench122Trigger on Bench122__c (before insert, before update) {
    BenchService0122.handle(Trigger.new);
}
