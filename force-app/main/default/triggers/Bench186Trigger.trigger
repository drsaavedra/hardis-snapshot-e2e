trigger Bench186Trigger on Bench186__c (before insert, before update) {
    BenchService0186.handle(Trigger.new);
}
