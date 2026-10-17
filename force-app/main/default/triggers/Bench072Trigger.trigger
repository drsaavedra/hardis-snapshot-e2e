trigger Bench072Trigger on Bench072__c (before insert, before update) {
    BenchService0072.handle(Trigger.new);
}
