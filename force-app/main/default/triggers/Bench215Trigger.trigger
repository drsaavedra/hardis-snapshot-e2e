trigger Bench215Trigger on Bench215__c (before insert, before update) {
    BenchService0215.handle(Trigger.new);
}
