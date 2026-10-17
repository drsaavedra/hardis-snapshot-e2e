trigger Bench252Trigger on Bench252__c (before insert, before update) {
    BenchService0252.handle(Trigger.new);
}
