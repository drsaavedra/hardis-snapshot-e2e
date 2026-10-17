trigger Bench023Trigger on Bench023__c (before insert, before update) {
    BenchService0023.handle(Trigger.new);
}
