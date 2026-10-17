trigger Bench265Trigger on Bench265__c (before insert, before update) {
    BenchService0265.handle(Trigger.new);
}
