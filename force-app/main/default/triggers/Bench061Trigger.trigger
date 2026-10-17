trigger Bench061Trigger on Bench061__c (before insert, before update) {
    BenchService0061.handle(Trigger.new);
}
