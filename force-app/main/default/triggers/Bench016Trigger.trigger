trigger Bench016Trigger on Bench016__c (before insert, before update) {
    BenchService0016.handle(Trigger.new);
}
