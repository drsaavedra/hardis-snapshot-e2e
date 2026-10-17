trigger Bench262Trigger on Bench262__c (before insert, before update) {
    BenchService0262.handle(Trigger.new);
}
