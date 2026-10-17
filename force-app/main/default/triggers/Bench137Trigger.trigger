trigger Bench137Trigger on Bench137__c (before insert, before update) {
    BenchService0137.handle(Trigger.new);
}
