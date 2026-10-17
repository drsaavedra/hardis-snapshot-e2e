trigger Bench131Trigger on Bench131__c (before insert, before update) {
    BenchService0131.handle(Trigger.new);
}
