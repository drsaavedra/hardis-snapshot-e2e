trigger Bench012Trigger on Bench012__c (before insert, before update) {
    BenchService0012.handle(Trigger.new);
}
