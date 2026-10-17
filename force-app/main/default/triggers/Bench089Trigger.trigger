trigger Bench089Trigger on Bench089__c (before insert, before update) {
    BenchService0089.handle(Trigger.new);
}
