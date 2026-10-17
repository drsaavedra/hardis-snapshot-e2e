trigger Bench045Trigger on Bench045__c (before insert, before update) {
    BenchService0045.handle(Trigger.new);
}
