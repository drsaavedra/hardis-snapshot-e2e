trigger Bench270Trigger on Bench270__c (before insert, before update) {
    BenchService0270.handle(Trigger.new);
}
