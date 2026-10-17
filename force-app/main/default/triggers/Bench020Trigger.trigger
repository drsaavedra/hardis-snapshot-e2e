trigger Bench020Trigger on Bench020__c (before insert, before update) {
    BenchService0020.handle(Trigger.new);
}
