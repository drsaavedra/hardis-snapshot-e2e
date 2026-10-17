trigger Bench281Trigger on Bench281__c (before insert, before update) {
    BenchService0281.handle(Trigger.new);
}
