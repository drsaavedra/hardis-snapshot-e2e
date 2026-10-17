trigger Bench245Trigger on Bench245__c (before insert, before update) {
    BenchService0245.handle(Trigger.new);
}
