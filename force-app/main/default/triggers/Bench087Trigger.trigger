trigger Bench087Trigger on Bench087__c (before insert, before update) {
    BenchService0087.handle(Trigger.new);
}
