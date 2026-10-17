trigger Bench160Trigger on Bench160__c (before insert, before update) {
    BenchService0160.handle(Trigger.new);
}
