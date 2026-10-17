trigger Bench255Trigger on Bench255__c (before insert, before update) {
    BenchService0255.handle(Trigger.new);
}
