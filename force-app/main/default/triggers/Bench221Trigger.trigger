trigger Bench221Trigger on Bench221__c (before insert, before update) {
    BenchService0221.handle(Trigger.new);
}
