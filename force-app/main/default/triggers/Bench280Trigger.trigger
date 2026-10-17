trigger Bench280Trigger on Bench280__c (before insert, before update) {
    BenchService0280.handle(Trigger.new);
}
