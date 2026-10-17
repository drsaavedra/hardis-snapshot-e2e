trigger Bench107Trigger on Bench107__c (before insert, before update) {
    BenchService0107.handle(Trigger.new);
}
