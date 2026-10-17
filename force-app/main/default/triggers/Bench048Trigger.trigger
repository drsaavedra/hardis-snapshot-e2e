trigger Bench048Trigger on Bench048__c (before insert, before update) {
    BenchService0048.handle(Trigger.new);
}
