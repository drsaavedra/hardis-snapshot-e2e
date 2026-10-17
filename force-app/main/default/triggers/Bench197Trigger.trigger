trigger Bench197Trigger on Bench197__c (before insert, before update) {
    BenchService0197.handle(Trigger.new);
}
