trigger Bench178Trigger on Bench178__c (before insert, before update) {
    BenchService0178.handle(Trigger.new);
}
