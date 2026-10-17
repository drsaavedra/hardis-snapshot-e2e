trigger Bench246Trigger on Bench246__c (before insert, before update) {
    BenchService0246.handle(Trigger.new);
}
