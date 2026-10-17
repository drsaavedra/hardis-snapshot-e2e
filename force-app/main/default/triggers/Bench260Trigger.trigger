trigger Bench260Trigger on Bench260__c (before insert, before update) {
    BenchService0260.handle(Trigger.new);
}
