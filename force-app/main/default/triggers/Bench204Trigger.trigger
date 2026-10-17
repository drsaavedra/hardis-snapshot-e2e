trigger Bench204Trigger on Bench204__c (before insert, before update) {
    BenchService0204.handle(Trigger.new);
}
