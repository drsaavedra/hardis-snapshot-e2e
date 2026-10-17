trigger Bench033Trigger on Bench033__c (before insert, before update) {
    BenchService0033.handle(Trigger.new);
}
