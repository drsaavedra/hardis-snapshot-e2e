trigger Bench287Trigger on Bench287__c (before insert, before update) {
    BenchService0287.handle(Trigger.new);
}
